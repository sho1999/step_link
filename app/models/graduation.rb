class Graduation < ActiveHash::Base
  self.data = [
    { id: 2, name: '2023' },
    { id: 3, name: '2024' },
    { id: 4, name: '2025' },
    { id: 5, name: '2026' }
  ]

  include ActiveHash::Associations
  has_many :students
end