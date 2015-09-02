  def time_it
    start_time = Time.now
    yield
    end_time = Time.now
    diff = end_time - start_time
    puts "That took #{diff}"
  end


time_it do
  sleep(2)
end
