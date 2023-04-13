class PlayerCharacter < ApplicationRecord
    validates :name, presence: true
    validates :main_stats, presence: true
    validates :proficiency, presence: true
    validates :saving_throws, presence: true

    #validates_presence_of :name
    #validates_presence_of :main_stats
end
