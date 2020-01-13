x = [1,2,5,27,6,2,8,9]

oof = x.reduce(1) do |carry, n|
    if n > carry
        carry = n
    else
        carry += 0
    end
    puts "carry: #{carry}"
end

puts oof