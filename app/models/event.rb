class Event < ActiveRecord::Base

  self.table_name = "ZAPPLICATION"

  def start_time 
    converted_time(self.ZSTARTDATE)
  end

  def end_time
    converted_time(self.ZENDDATE)
  end

  def display_name
    self.ZDISPNAME
  end

  private

  def converted_time(time_integer)
    Time.at(time_integer) + 31.years + 1.day rescue nil
  end

end