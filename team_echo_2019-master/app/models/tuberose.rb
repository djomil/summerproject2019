class Tuberose < ApplicationRecord
    #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
     
    validates :tuberose_id, :tuberose_type, presence: true, uniqueness: true 
         
end 