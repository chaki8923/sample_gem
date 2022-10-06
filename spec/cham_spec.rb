require './lib/cham/error'

RSpec.describe Cham::Error do
    let(:error) {Cham::Error.new("00107",msg: "既に存在するメールアドレスです")}

    it "00107が渡されたら重複エラーが出る" do
        expect(Cham::Error.get_error_message('00107')).to eq "既に存在するメールアドレスです"
    end

    # it "メッセージが表示されること" do
    #     expect(error.message).to eq "00107,既に登録済みのメールアドレスです,既に存在するメールアドレスです"
    # end

    # it "メッセージが表示されること" do
    #     expect(error.to_s).to eq "既に存在するメールアドレスです"
    # end
end