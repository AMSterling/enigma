require './lib/enigma'
require './lib/key'
require './lib/offset'

enigma = Enigma.new

decrypted = enigma.decrypt

encrypted_text = File.open("lib/encrypted.txt", "r").read.chomp
decrypted_file = File.open("lib/decrypted.txt", "w").write(decrypted[:decryption])

puts "Created #{ARGV[1]} with the key #{ARGV[2]} and date #{decrypted[:date]}"
