class Array
  def keep
    result = []
    self.each {|e| (yield(e) ? result << e : next)}
    result
    #self.each do |e|
    #  result << e if yield(e)
    #end
    #result

end
  def discard
    result = []
    self.each { |e| (yield(e) ? next : result << e)}
    result
  end

end
