  
# require 'rails_helper'
#загулшка
# describe "something" do 
#   it "does something" do
#     #/////
#   end
# end

require 'rails_helper'

describe Contact do
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
end