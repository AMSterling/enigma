require './lib/enigma'
require './lib/key'
require './lib/offset'

enigma = Enigma.new

encrypted = enigma.encrypt

encrypted_file = File.open("lib/encrypted.txt", "w").write(encrypted[:encryption])

puts "Created #{ARGV[1]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"
