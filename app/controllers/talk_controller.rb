class TalkController < ApplicationController
  class <<self
    Messaging = Struct.new(:request, :response, :options)

    def messaging(args = {})
      (req, res) = args.shift || []
      @last_messaging = Messaging.new(req, res, args)
    end

    def method_added(name)
      if @last_messaging
        @messagings ||= {}
        @messagings[name] = @last_messaging
        @last_messaging = nil
      end
    end
  end

  messaging Hello => Hello
  def start(hello)
    Rails.logger.info "Hello from #{hello.from}"
    reply = Hello.new(from: `hostname`.chomp)
  end
end
