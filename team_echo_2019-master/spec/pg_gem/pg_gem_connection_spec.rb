require 'pg'
describe PG::Connection do
    
     #pg gem testing the connection- github source
    it "can create a connection option string from a Hash of options" do
conn =PG.connect(dbname: 'sruc_field', user: 'postgres', password: 'ruby')
		optstring = described_class.parse_connect_args(

			:host => '5432',

			:dbname => 'sruc_field',

			'sslmode' => 'require'

		  )



		expect( optstring ).to be_a( String )

		expect( optstring ).to match( /(^|\s)host='5432'/ )

		expect( optstring ).to match( /(^|\s)dbname='sruc_field'/ )

		expect( optstring ).to match( /(^|\s)sslmode='require'/ )

	end
end