class ItemCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '食品' },
    { id: 3, name: '日用品' },
    { id: 4, name: 'レジャー' },
    { id: 5, name: 'サービス' },
    { id: 6, name: '趣味/娯楽' },
    { id: 7, name: '衣服' },
    { id: 8, name: '美容/健康' },
    { id: 9, name: '教育' },
    { id: 10, name: '交際費' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end