n = gets.to_i
cards = gets.strip.split.map(&:to_i).sort.reverse

alice_score = 0
bob_score = 0

until cards.empty? do
    alice_score += cards.shift
    break if cards.empty?
    bob_score += cards.shift
end

puts (alice_score - bob_score)
