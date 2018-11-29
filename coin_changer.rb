def coinify(change)
  hash = Hash.new
  if change.class == Integer then while change > 0
      if change / 25 >= 1
        hash[change / 25 > 1 ? :Quarters : :Quarter] = (change / 25)
        change -= (25 * hash[change / 25 > 1 ? :Quarters : :Quarter])
      elsif change / 10 >= 1
        hash[change / 10 > 1 ? :Dimes : :Dime] = (change / 10)
        change -= (10 * hash[change / 10 > 1 ? :Dimes : :Dime])
      elsif change / 5 >= 1
        hash[:Nickel] = 1
        change -= 5
      elsif change / 1 >= 1
        hash[change / 1 > 1 ? :Pennies : :Penny] = (change / 1)
        change -= (1 * hash[change / 1 > 1 ? :Pennies : :Penny])
      end
        is_hash_full = true
    end
  end
  return is_hash_full ? hash : "Please use correct input"
end

def coinify_loop(change)
  if change.class == Integer
    hash = Hash.new
    coins = [
      [change / 25 > 1 ? :Quarters : :Quarter, 25],
      [(change % 25) / 10 > 1 ? :Dimes : :Dime, 10],
      [:Nickel, 5],
      [((change % 25) - (change % 10)) / 1 > 1  ? :Pennies : :Penny, 1]
    ]
    coins.each do |value|
      if (change / value[1]) >= 1
        hash[value[0]] = change / value[1]
        change -= value[1] * hash[value[0]]
      end
    end
    is_hash_full = true
  end
  return is_hash_full ? hash : "Please use correct input"
end
