$: << File.dirname(__FILE__)
require "connect"

require "rubygems"
require "active_record"

require 'pp'

class Project < ActiveRecord::Base
  has_many :tasks
end

class Task < ActiveRecord::Base
  has_many :time_entries
  belongs_to :project
end

class TimeEntry < ActiveRecord::Base
  belongs_to :task

  def self.latest
    find(:first,:order => 'id desc')
  end

  def close
    self.period_end = Time.now
    self.save!

    return self.period_end
  end
end
