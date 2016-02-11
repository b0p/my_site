require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when('John', 'Sally') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Smith', 'Adams') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('user@example.com', 'bill@gmail.com') }
  it do
    should_not have_valid(:email).when(nil,
                                       '',
                                       'user',
                                       'user@com',
                                       'userscom',
                                       'user.com'
                                      )
  end

  it 'has a matching password confirmation for password' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'anotherpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end
end
