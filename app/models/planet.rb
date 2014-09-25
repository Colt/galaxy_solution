class Planet < ActiveRecord::Base

    validates :name, presence: true

    validates :diameter, numericality: { only_integer: true }

end
