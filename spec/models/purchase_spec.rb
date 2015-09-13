require 'rails_helper'

describe Purchase do
  before do
    @pending_purchase = FactoryGirl.create(:purchase)
    @purchase_in_progress = FactoryGirl.create(:purchase, :in_progress)
    @submitted_purchase = FactoryGirl.create(:purchase, :submitted)
  end
  describe '#all_pending' do
    it 'returns purchase status as pending' do
      expect(@pending_purchase.status).to eq 'pending'
    end
    it 'returns pending purchases' do
      expect(Purchase.all_pending).to eq [@pending_purchase]
    end
  end

  describe '#all_pending' do
    it 'returns purchase status as pending' do
      expect(@purchase_in_progress.status).to eq 'in_progress'
    end
    it 'returns pending purchases' do
      expect(Purchase.all_pending).to eq [@pending_purchase]
    end
  end
end
