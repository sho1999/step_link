class Feature < ActiveHash::Base
  self.data = [
    { id: 2, name: 'ベストベンチャー' },
    { id: 3, name: '一部上場企業' },
    { id: 4, name: '海外拠点あり' }
  ]

  include ActiveHash::Associations
  has_many :corp_users
end