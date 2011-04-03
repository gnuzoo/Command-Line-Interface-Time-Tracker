$: << File.dirname(__FILE__)
require "connect"

require "rubygems"
require "active_record"

ActiveRecord::Schema.define do

  create_table :projects do |t|
    t.string :name
    t.string :detail
  end

  create_table :tasks do |t|
    t.integer :project_id
    t.string :name
    t.string :detail
  end

  create_table :time_entries do |t|
    t.integer :task_id
    t.time :period_start
    t.time :period_end
    t.string :detail
  end

end
