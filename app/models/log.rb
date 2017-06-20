class Log < ApplicationRecord
  validates_presence_of :userid, :desc
end
