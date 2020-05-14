class Song < ActiveRecord::Base
    has_many :artists, through: :artistsongs
end