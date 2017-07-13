def bin_to_dec(bin)
  dec = 0

  # Chop up the string into an array
  # Reverse the array
  # Iterate over the array,
  #   Determine which position the 1's are in
  #   keep track of them

  bin.chars.reverse.each_with_index do |char, i|
    #puts "char=#{char}, i=#{i}"

    # if char == '1'
    #   dec += if i == 0
    #     1
    #   elsif i == 1
    #     2
    #   elsif i == 2
    #     4
    #   elsif i == 3
    #     8
    #   elsif i == 4
    #     16
    #   elsif i == 5
    #     32
    #   elsif i == 6
    #     64
    #   elsif i == 7
    #     128
    #   end
    # end

    dec += char.to_i*(2**i)
  end

  return dec
end

puts bin_to_dec('10100')
puts bin_to_dec('101')
puts bin_to_dec('101100')


#'10' -> ['1', '0']
