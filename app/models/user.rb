class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
      adjectives = ['Ancient', 'Bulky', 'Creative', 'Dashing', 'Efficient', 'Flying', 'Golden']
      nouns = ['Hypeman', 'Iguana', 'Jersey', 'Leopard', 'Monster']
      
      number = rand.to_s[2..4]
      username = "#{adjectives.sample}-#{nouns.sample}-#{number}"

      create(username: username)
  end
end
