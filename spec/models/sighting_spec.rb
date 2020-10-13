require 'rails_helper'

describe Sighting do
  it { should belong_to(:animal) }
  it { should belong_to(:region) }
end