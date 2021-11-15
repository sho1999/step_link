class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1年生' },
    { id: 3, name: '2年生' },
    { id: 4, name: '3年生' },
    { id: 5, name: '4年生' }
  ]
  include ActiveHash::Associations
  has_many :students
end