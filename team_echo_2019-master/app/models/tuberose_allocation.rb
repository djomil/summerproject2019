class TuberoseAllocation < ApplicationRecord
    belongs_to :tuberose
    belongs_to :plotsubplot
    
    #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data

     validates :tuberose_allocation_id, presence: true, uniqueness: true
    validates :tuberose_id, :plotsubplot_id, :year_observation, :replication, :rotation, presence: true
end
