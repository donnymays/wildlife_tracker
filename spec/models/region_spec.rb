require 'rails_helper'

describe Region do
  it { should have_many(:sightings) }
  it { should have_many(:animals) }
end