require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
end

  describe '商品情報入力' do
    context '商品情報入力がうまくいく時' do
      it '全ての値が正しく入力されていれば登録できること' do
        expect(@item).to be_valid
      end

      it 'メモは空でも保存できること' do
        @item.memo = nil
        expect(@item).to be_valid
      end

    end

    context '商品情報の入力がうまく行かない時' do
      it 'imageが空だと出品できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Image can't be blank"
      end

      it 'nameが空だと登録できない' do
        @item.item_name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Item name can't be blank"
      end

      it 'nameが全角文字でなければ登録できない' do
        @item.item_name = 'ｱｱｱｱ'
        @item.valid?
        expect(@item.errors.full_messages).to include "Item name is invalid"
      end

      it 'nameが41文字以上だと登録できない' do
        @item.item_name = 'あああああああああああああああああああああああああああああああああああああああああ'
        @item.valid?
        expect(@item.errors.full_messages).to include "Item name is too long (maximum is 40 characters)"
      end

      it 'categoryが未選択だと登録できない' do
        @item.item_category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Item category can't be blank"
      end

      it 'regretが未選択だと登録できない' do
        @item.regret_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Regret can't be blank"
      end

      it 'priceが空だと登録できない' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Price can't be blank"
      end

      it 'priceが全角数字だと登録できない' do
        @item.price = "２０００"
        @item.valid?
        expect(@item.errors.full_messages).to include "Price Out of setting range", "Price Half-width number."
      end

      it "値段が10より小さかった時に登録できないこと" do
        @item.price = "9"
        @item.valid?
        expect(@item.errors.full_messages).to include "Price Out of setting range"
      end

      it "値段が9999999より大きかった時に登録できないこと" do
        @item.price = "10000000"
        @item.valid?
        expect(@item.errors.full_messages).to include "Price Out of setting range"
      end

      it 'calendarが空だと登録できない' do
        @item.calendar = nil
        @item.valid?
        expect(@item.errors.full_messages).to include "Calendar can't be blank"
      end

      it 'calendarが全角数字だと登録できない' do
        @item.calendar = "１９９１-１-１"
        @item.valid?
        expect(@item.errors.full_messages).to include "Calendar is invalid"
      end

      it 'calendarの入力が誤っていると登録できない' do
        @item.calendar = "19900-123-456"
        @item.valid?
        expect(@item.errors.full_messages).to include "Calendar is invalid"
      end
      
    end
  end
end