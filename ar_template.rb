$: << File.dirname(__FILE__)
require "connect"

require "rubygems"
require "activerecord"

ActiveRecord::Schema.define do

    create_table :counters, :force => true do |t|
          t.integer :count
              t.integer :lock_version, :default => 0
                end

end



class Counter < ActiveRecord::Base
end

Counter.delete_all
Counter.create(:count => 0)

count1 = Counter.find(:first)
count2 = Counter.find(:first)


