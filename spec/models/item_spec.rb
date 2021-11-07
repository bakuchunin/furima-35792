require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品情報入力' do
    context '出品できるとき' do
      it '必須項目が入力されていれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context '出品できないとき' do
      it 'imageがない場合は登録できないこと' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameがない場合は登録できないこと' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'textがない場合は登録できないこと' do
        @item.text = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end

      it 'category_idがない場合は登録できないこと' do
        @item.category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end

      it 'status_idがない場合は登録できないこと' do
        @item.status_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end

      it 'delivery_charge_bearer_idがない場合は登録できないこと' do
        @item.delivery_charge_bearer_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery charge bearer can't be blank")
      end

      it 'prefecture_idがない場合は登録できないこと' do
        @item.prefecture_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end

      it 'delivery_days_idがない場合は登録できないこと' do
        @item.delivery_days_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery days can't be blank")
      end

      it 'priceがない場合は登録できないこと' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end
