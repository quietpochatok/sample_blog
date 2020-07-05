  
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
  # it { should validate_presence_of :email }
  # it { should validate_presence_of :message }
end