describe Admin::BaseController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }

  before do
    allow(controller).to receive(:authenticate_user!)
    allow(controller).to receive(:current_user).and_return(user)
  end

  context "visitors" do
    it "are not able to access the admin section" do
      get :index

      expect(response).to redirect_to("/")
      expect(flash[:alert]).to eql("You must sign in as admin.")
    end
  end
end