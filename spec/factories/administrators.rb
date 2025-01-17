# == Schema Information
#
# Table name: administrators
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_administrators_on_email                 (email) UNIQUE
#  index_administrators_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :administrator do
    sequence(:email) { |n| "admin#{n}@example" }
    password { "password" }
    password_confirmation { "password" }
  end
end
