class PreferredTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '午前中' }, { id: 3, name: '12時-14時' },
    { id: 4, name: '14時-16時' }, { id: 5, name: '16時-18時' }, { id: 6, name: '18時-20時' }, 
    { id: 7, name: '20時-21時' }
  ]

  include ActiveHash::Associations
  has_many :packages

end