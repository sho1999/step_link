class Industry < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '金融' },
    { id: 3, name: 'IT' },
    { id: 4, name: 'メディア' },
    { id: 5, name: '自動車・機械' },
    { id: 6, name: '小売・卸' },
    { id: 7, name: 'サービス' },
    { id: 8, name: '建設・不動産' },
    { id: 9, name: 'エネルギー' },
    { id: 10, name: '電機・精密' },
    { id: 11, name: '生活関連' },
    { id: 12, name: '食品・飲食' },
    { id: 13, name: '物流' },
    { id: 14, name: '娯楽・レジャー' }
  ]
  include ActiveHash::Associations
  has_many :students
end