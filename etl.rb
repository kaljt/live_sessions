class ScrabbleScore

score_table = { 1=> ['A','E','I','O','U','L','N','R','S','T'],
                2=> ['D','G'],
                3=> ['B','C','M','P'],
                4=> ['F','H','V','W','Y'],
                5=> ['K'],
                8=> ['J','X'],
               10=> ['Q','Z']}

  def self.convert(old)
    result = {}

    old.each do |score, letters|
      letters.each do |letter|
        result[letter.downcase] = score 
      end
    end

    result
  end


end
