require 'spec_helper'

describe Race do
  it { should have_valid(:race_name).when("this is a race", "Great Race") }
  it { should_not have_valid(:race_name).when('', nil) }

  it { should have_valid(:distance).when("5k", "10k", "Half Marathon", "Marathon") }
  it { should_not have_valid(:distance).when(nil, '') }

  it { should have_valid(:time_second).when(22, 33, 22, 55, 59) }
  it { should_not have_valid(:time_second).when(-1, -22, 66, 3242343, "dsafasdfasdf")}

  it { should have_valid(:time_minute).when(0, 22, 33, 22, 6, 5) }
  it { should_not have_valid(:time_minute).when(nil, -1, -22, "dsfasdfaf") }

  it { should have_valid(:location).when("Pittsburgh", "Austin", "Boston") }

  it { should belong_to(:user) }

end
