

module Cham
    class Error < ::StandardError

        INVALID_LOGIN = "00107"
        PASS_REQUIRED = "00100"
        PASS_LENGTH = "00110"
        
        def initialize(code, msg: '')
          @code = code
          @msg = msg
        end
    ;k
        # def message
        #     @code.to_s + ',' + @msg.to_s + ',' + self.get_error_message(@code)
        # end
    
        # def self.to_s
        #     self.get_error_message(@code)
        # end
    
        def self.get_error_message(code)
            case code
            when "00107"
                return "既に存在するメールアドレスです"
            when "00100"
                return "パスワードは入力必須です。"
            when "00110"
                return "パスワードは5文字以上の半角英数です。"
            when "00112"
                return "パスワードまたはアドレスが一致しません"
            end
        end
    end
end