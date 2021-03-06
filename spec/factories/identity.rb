FactoryGirl.define do
  factory :identity do
    sequence(:uid, 1000) { |n| "abcdef#{n}" }
    # association :user, :factory => :user, :method => :build
    provider 'facebook'
    auth_hash { x = { 'credentials' => {'token' => '123648493','secret' => '12477388272'} } }
    # association :api, :factory => :facebook_identity, :method => :build
  end
end
