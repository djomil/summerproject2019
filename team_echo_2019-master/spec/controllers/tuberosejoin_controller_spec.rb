require 'rails_helper'

RSpec.describe TuberosejoinController, type: :controller do

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
it "returns the correct helper method in index method" do
    include TuberosejoinHelper
        def index
      @Tuberdata = tuberdata
       

  end
    expect( @Tuberdata) === (tuberdata)
end
end
