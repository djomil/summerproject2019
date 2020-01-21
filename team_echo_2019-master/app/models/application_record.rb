class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
    
  #The following code was based on a video found on www.driftingruby.com/episodes/importing-and-exporting-csv-data
   
   def self.to_csv(fields = column_names, options = {})
        CSV.generate(options) do |csv|
            csv << fields
            all.each do |application_record|
                csv << application_record.attributes.values_at(*fields)
                            end
                     end
    end
  
end
