class Song < ActiveRecord::Base
  def to_param
    title
  end
end
