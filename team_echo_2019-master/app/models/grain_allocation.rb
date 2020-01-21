class GrainAllocation < ApplicationRecord
     belongs_to :grain
  belongs_to :plotsubplot
   
     validates :grain_allocation_id, presence: true, uniqueness: true
    validates :grain_id, :plotsubplot_id, :year_observation, :replication, :rotation, presence: true 
    
    
end
