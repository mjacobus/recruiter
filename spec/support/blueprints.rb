require 'machinist/active_record'

module Recruiter
  User.blueprint do
    name     { "The Name #{sn}" }
    email    { "email#{sn}@example.com" }
    provider { 'github' }
    uid      { sn }
  end

  Job.blueprint do
    user
    title { "ruby job #{sn}" }
    description { "the requirements" }
    how_to_apply { "how to apply" }
    city
  end

  State.blueprint do
    name  { Faker::Address.city }
    short { "#{sn}" }
  end

  City.blueprint do
    name  { Faker::Address.city }
    short { "#{sn}" }
    state
  end

  Tag.blueprint do
    name { "tag #{sn}" }
  end
end
