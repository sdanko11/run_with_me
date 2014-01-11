require 'spec_helper'

describe User do
  it { should have_valid(:email).when("stevedanko1@gmail.com") }
  it { should_not have_valid(:email).when(nil, '', "steve", "billl") }

  it { should have_valid(:distance_per_week).when(9, 10, 23) }
  it { should_not have_valid(:distance_per_week).when(nil, 0, '', "adfsdfsdaf") }

  it { should have_valid(:first_name).when("steve", "joe", "ben") }
  it { should_not have_valid(:first_name).when("", nil) }

  it { should have_valid(:last_name).when("steve", "joe", "ben") }
  it { should_not have_valid(:last_name).when("", nil) }

  it { should have_valid(:average_pace_second).when(33, 00, 0, 23, 59) }
  it { should_not have_valid(:average_pace_second).when(99, 60, 61, 88, "adfgdsf") }

  it { should have_valid(:average_pace_minute).when(1,2,3,4,5) }
  it { should_not have_valid(:average_pace_minute).when(nil, '', "fgasfasdf") }

  it { should have_valid(:encrypted_password).when("steve", "dsfsdf99") }
  it { should_not have_valid(:encrypted_password).when(nil, '') }

  it { should have_valid(:time_running).when(1,2,3,4,5,5,6) }
  it { should_not have_valid(:time_running).when(nil, '', "dasfasdf") }

  it { should have_many(:races) }

end