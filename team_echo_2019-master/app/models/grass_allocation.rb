class GrassAllocation < ApplicationRecord
     belongs_to :grass
  belongs_to :plotsubplot
    
#The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data    
   
    validates :grass_allocation_id, presence: true, uniqueness: true
    validates :grass_id, :plotsubplot_id, :year_observation, :replication, :rotation, presence: true
end
