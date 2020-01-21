class Grain < ApplicationRecord
    #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
   
    validates :grain_id, :grain_type, presence: true, uniqueness: true 
    
end
