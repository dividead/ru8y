(1..332).each do |a|
    (2..449).each do |b|
        c = 1000 - a - b
        p a*b*c if c**2==(a**2 + b**2)
    end
end    