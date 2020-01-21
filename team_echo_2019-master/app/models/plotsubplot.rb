class Plotsubplot < ApplicationRecord
    #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
    
    validates :plotsubplot_id, presence: true, uniqueness: true
    validates :plot_id, presence: true 
end
