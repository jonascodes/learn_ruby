class Timer
  attr_reader :time_string
  attr_reader :seconds
  
  def initialize 
      @seconds = 0
  end

  def seconds=(sec)
      h = (sec / 3600)
      m = (sec - 3600 * h) / 60
      s = sec % 60
      @seconds = sec
      @time_string = sprintf("%02d:%02d:%02d", h, m, s)
  end
end
