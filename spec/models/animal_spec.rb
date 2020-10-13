require 'rails_helper'

describe Animal do
  it { should have_many(:sightings) }
  it { should have_many(:regions) }
end