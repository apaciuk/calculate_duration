class Chapter < ApplicationRecord
  include CalculatesDuration
  belongs_to :series, optional: true,class_name: "Series"

  serialize :duration, DurationCoder

  updates_duration_of :series
end
