# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rap       = Genre.find_or_create_by_name("rap")
wutang    = Artist.find_or_create_by_name("Wu-Tang Clan")
thirtysix = Album.find_or_create_by_name("36 Chambers")

wutang.album << thirtysix

s1 = thirtysix.songs.create(:name => "Bring da Ruckus")
s1.update_attributes(:artist => wutang, :genre => rap)
wutang.songs << s1

s2 = thirtysix.songs.create(:name => "C.R.E.A.M")
s2.update_attributes(:artist => wutang, :genre => rap)
wutang.songs << s2

s3 = thirtysix.songs.create(:name => "Protect Yo Neck")
s3.update_attributes(:artist => wutang, :genre => rap)
wutang.songs << s3

s4 = thirtysix.songs.create(:name => "Method Man")
s4.update_attributes(:artist => wutang, :genre => rap)
wutang.songs << s4

rap = Genre.find_or_create_by_name("rap")
notorious = Arist.find_or_create_by_name("Notorious B.I.G")
album1 = Album.find_or_create_by_name("Ready to Die")
album2 = Album.find_or_create_by_name("Born Again")
album3 = Album.find_or_create_by_name("Life After Death")

notorious.album << album1
notorious.album << album2
notorious.album << album3

s5 = album1.songs.create(:name => "Gimme the Loot")
s5.update_attributes(:artist => notorious, :genre => "rap")
notorious.songs << s5

s6 = album2.songs.create(:name => "Dead Wrong")
s6.update_attributes(:artist => notorious, :genre => "rap")
notorious.songs << s6

s7 = album3.songs.create(:name => "Hypnotize")
s7.update_attributes(:artist => notorious, :genre => "rap")
notorious.songs << s7