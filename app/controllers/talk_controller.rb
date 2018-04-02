class TalkController < ApplicationController
  protect_from_forgery except: :start

  module InstanceMethods
    def send_action(method_name, *args)
      return super unless args.empty?
      return super if !defined?(params) || params.nil?

      meth = method_name.to_sym
      messaging = self.class.__messaging(meth)
      return super unless messaging

      message = messaging.request.decode(request.raw_post)
      super method_name, message
    end

    def reply(message)
      send_data message.to_proto, type: "application/protobuf"
    end
  end
  prepend InstanceMethods

  Messaging = Struct.new(:request, :response, :options)

  class <<self

    def messaging(args = {})
      (req, res) = args.shift || []
      @last_messaging = Messaging.new(req, res, args)
    end

    def method_added(name)
      if @last_messaging
        @messagings ||= {}
        @messagings[name.to_sym] = @last_messaging
        @last_messaging = nil
      end
    end

    def __messaging(name)
      @messagings[name.to_sym]
    end
  end

  messaging Hello => Hello
  def start(hello)
    Rails.logger.info "Hello from #{hello.from}"
    reply Hello.new(from: `hostname`.strip)
  end

  # ruby -e 'File.open("tmp/hello.protobuf", "wb") { |f| f.write(Hello.new(from/ "ichiro").to_proto) }'
  # curl -X POST -H "Content-Type: application/protobuf" http://localhost:3000/talk/start --data-binary @tmp/hello.protobuf
end
