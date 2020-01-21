require 'rails_helper'
require 'pg'
# Specs in this file have access to a helper object that includes
# the TuberHelper. For example:
#
# describe TuberHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TuberHelper, type: :helper do
   describe PG::Result do
      
  it 'retrieves the correct result when calling a query from tired method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
     tired = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.fwt_a,
    SecondSet.fwt_b

FROM

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_a
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND plotsubplots.subplot_id = 'a'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_b
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'swede'
AND plotsubplots.subplot_id = 'b'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      
       expect( tired[0]['year_observation'] ).to eq( '2007' )
       expect( tired[1]['year_observation'] ).to eq( '2008' )
       expect( tired[2]['year_observation'] ).to eq( '2009' )
       expect( tired[3]['year_observation'] ).to eq( '2010' )
       expect( tired[4]['year_observation'] ).to eq( '2011' )
       
     
  end
    it 'retrieves the correct result when calling a query from taylor method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
    taylor = conn.exec("SELECT 
  
    FirstSet.year_observation,
    FirstSet.fwt_a,
    SecondSet.fwt_b

FROM

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_a
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND plotsubplots.subplot_id = 'a'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as FirstSet

INNER JOIN

(SELECT tuberoses.tuberose_type, 
tuberose_allocations.year_observation,  
ROUND(AVG(tuberose_allocations.swede_and_pots_fwt)) as fwt_b
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id 
AND tuberoses.tuberose_type = 'potato'
AND plotsubplots.subplot_id = 'b'
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberoses.tuberose_type, tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation) as SecondSet
ON FirstSet.year_observation = SecondSet.year_observation
order by FirstSet.year_observation;" )
      
       expect( taylor[0]['year_observation'] ).to eq( '2007' )
       expect( taylor[1]['year_observation'] ).to eq( '2008' )
       expect( taylor[2]['year_observation'] ).to eq( '2009' )
       expect( taylor[3]['year_observation'] ).to eq( '2010' )
       expect( taylor[4]['year_observation'] ).to eq( '2011' )
       
     
  end
    it 'retrieves the correct result when calling a query from taylor method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
    harry = conn.exec("SELECT tuberose_allocations.year_observation,
ROUND(AVG(tuberose_allocations.p)) AS average_rounded_p, 
ROUND(AVG(tuberose_allocations.k)) AS average_rounded_k,
ROUND(AVG(tuberose_allocations.mg)) AS average_rounded_mg,
AVG(tuberose_allocations.ph) AS average_ph 
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND tuberose_allocations.rotation = ('t1') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;" )
      
       expect( harry[0]['year_observation'] ).to eq( '2007' )
       expect( harry[1]['year_observation'] ).to eq( '2008' )
       expect( harry[2]['year_observation'] ).to eq( '2009' )
       expect( harry[3]['year_observation'] ).to eq( '2010' )
       expect( harry[4]['year_observation'] ).to eq( '2011' )
       
     
  end
    it 'retrieves the correct result when calling a query from taylor method' do
  conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
      moji = conn.exec("SELECT tuberose_allocations.year_observation,
ROUND(AVG(tuberose_allocations.p)) AS average_rounded_p, 
ROUND(AVG(tuberose_allocations.k)) AS average_rounded_k,
ROUND(AVG(tuberose_allocations.mg)) AS average_rounded_mg,
AVG(tuberose_allocations.ph) AS average_ph 
FROM tuberose_allocations, tuberoses, plotsubplots 
WHERE tuberose_allocations.tuberose_id = tuberoses.tuberose_id 
AND tuberose_allocations.plotsubplot_id = plotsubplots.plotsubplot_id
AND tuberose_allocations.rotation = ('t2') 
AND tuberose_allocations.year_observation BETWEEN '2007' AND '2018'
GROUP BY tuberose_allocations.year_observation
ORDER BY tuberose_allocations.year_observation;" )
      
       expect( moji[0]['year_observation'] ).to eq( '2007' )
       expect( moji[1]['year_observation'] ).to eq( '2008' )
       expect( moji[2]['year_observation'] ).to eq( '2009' )
       expect( moji[3]['year_observation'] ).to eq( '2010' )
       expect( moji[4]['year_observation'] ).to eq( '2011' )
       
     
  end
end

end
