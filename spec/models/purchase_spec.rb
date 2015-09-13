require 'rails_helper'

describe Purchase do
  before do
    @pending_purchase = FactoryGirl.create(:purchase)
    @purchase_in_progress = FactoryGirl.create(:purchase, :in_progress)
    @submitted_purchase = FactoryGirl.create(:purchase, :submitted)
    @shipped_purchase = FactoryGirl.create(:purchase, :shipped)
    @received_purchase = FactoryGirl.create(:purchase, :received)
  end

  describe '#all_pending' do
    it 'returns purchase status as pending' do
      expect(@pending_purchase.status).to eq 'pending'
    end
    it 'returns pending purchases' do
      expect(Purchase.all_pending).to eq [@pending_purchase]
    end
  end

  describe '#in_progress' do
    it 'returns purchase status as in_progress' do
      expect(@purchase_in_progress.status).to eq 'in_progress'
    end
    it 'returns purchases in progress' do
      expect(Purchase.in_progress).to eq [@purchase_in_progress]
    end
  end

  describe '#submitted' do
    it 'returns purchase status as submitted' do
      expect(@submitted_purchase.status).to eq 'submitted'
    end
    it 'returns purchases in progress' do
      expect(Purchase.submitted).to eq [@submitted_purchase]
    end
  end

    describe '#submitted' do
    it 'returns purchase status as submitted' do
      expect(@submitted_purchase.status).to eq 'submitted'
    end
    it 'returns purchases in progress' do
      expect(Purchase.submitted).to eq [@submitted_purchase]
    end
  end

  describe '#all_shipped' do
    it 'returns purchase status as shipped' do
      expect(@shipped_purchase.status).to eq 'shipped'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_shipped).to eq [@shipped_purchase]
    end
  end

  describe '#all_received' do
    it 'returns purchase status as received' do
      expect(@received_purchase.status).to eq 'received'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_received).to eq [@received_purchase]
    end
  end
end
