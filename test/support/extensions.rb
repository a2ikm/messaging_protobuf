class Test::Unit::TestCase
  teardown do
    DatabaseRewinder.clean
  end
end
