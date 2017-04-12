require 'rails_helper'

RSpec.describe Activity, type: :model do
  it "validates" do
     activity = Activity.new(date: DateTime.now, speaker: 'Speaker Name', name: 'Foo', icon: 'icon.jpg')
     expect(activity).to be_valid

     expect(Activity.new).to_not be_valid
  end
end
