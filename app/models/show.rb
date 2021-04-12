class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.characters.collect do |c|
      list = c.actor.full_name
      list
    end
  end

end