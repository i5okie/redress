describe 'User Account' do
  
  describe '#email' do
    context "with invalid format" do
      user = User.new(email: "bad email")

      it { expect(user).to be_invalid }
    end
  end

end