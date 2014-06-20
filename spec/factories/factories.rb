FactoryGirl.define do

  factory :user do
    user_name "Eyad Alama"
    email "eyad@mail.com"
    phone_number "0192944889"
    id 1
  end

#:from, :seats_left, :seats_max, :to, :trip_date, :user_id
  factory :trip do
    user_id 1
    from "Riana Green Condo"
    to "KLCC"
    seats_max 3
    seats_left seats_max
    trip_date Time.now + 2.days

  end

end
