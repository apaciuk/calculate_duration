class Chapter < ApplicationRecord
  belongs_to :series, optional: true,class_name: "Series"

  serialize :duration, DurationCoder
end
