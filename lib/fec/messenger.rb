module Fec
  module Messenger
    def notice_message(message)
      puts Rainbow(message).green
    end
  end
end
