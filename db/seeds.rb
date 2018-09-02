# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



File.open(File.join(Rails.root, 'db', 'data', 'cmudict-0.7b.txt'), 'r') do |io|
  io.each_line do |line|
    word, arp = line.chomp.downcase.split('  ')
    Dictionary.create(word: word, arpabet: arp)
  end
end
