
describe 'Items' do
  describe '#name' do
    context "when not present" do
      item = Item.new(name: "")
      
      it { expect(item).to be_invalid }
    end

    context "when too short" do
      item = Item.new(name: "shrt")
      
      it { expect(item).to be_invalid }
    end

    context "when too long" do
      item = Item.new(name: "Way toooooooooooooooooooooooooooooooooooooo looooooooooooooooooong long long long long long long long")
      
      it { expect(item).to be_invalid }
    end
  end

  describe '#description' do
    context "when not present" do
      item = Item.new(description: "")
      
      it { expect(item).to be_invalid }
    end

    context "when too long" do
      item = Item.new(description: "Way toooooooooooooooooooooooooooooooooooooo looooooooooooooooooong long long long long long long longWay toooooooooooooooooooooooooooooooooooooo looooooooooooooooooong long long long long long long longWay toooooooooooooooooooooooooooooooooooooo looooooooooooooooooong long long long long long long longWay toooooooooooooooooooooooooooooooooooooo looooooooooooooooooong long long long long long long long")
      
      it { expect(item).to be_invalid }
    end
  end
end
