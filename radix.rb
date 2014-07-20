require 'thread'

class RadixSort

  def sort(list)
    @list = list
    
    buckets = []
    10.times { buckets << Queue.new }

    m = 10
    n = 1

    (digit_length + 1).times do
      @list.each { |num| buckets[num%m/n] << num }
      @list = []
      buckets.each { |queue| @list << queue.pop until queue.empty? }
      m *= 10
      n *= 10
    end
    @list
  end

  private

  def digit_length
    longest = 0
    @list.each { |num| longest = num.to_s.length if num.to_s.length > longest }
    longest
  end

end