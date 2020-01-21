class Grass < ApplicationRecord
    #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
   
   validates :grass_id, :grass_type, presence: true, uniqueness: true
end
