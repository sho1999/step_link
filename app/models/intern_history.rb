class InternHistory < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '〜3ヶ月' },
    { id: 3, name: '〜6ヶ月' },
    { id: 4, name: '1年' },
    { id: 5, name: '2年' },
    { id: 6, name: '3年〜' }
  ]

  include ActiveHash::Associations
  has_many :students
end