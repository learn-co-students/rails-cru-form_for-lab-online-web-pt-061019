class Song < ApplicationRecord
    belongs_to :artist, :genre
end
