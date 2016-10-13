# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
House.destroy_all


lannister = House.create(name: "Lannister", sigil: "http://vignette3.wikia.nocookie.net/gotrp/images/c/cb/250px-House_Lannister.png/revision/latest?cb=20140320190146", motto: "A Lannister always pays his debts.")
stark = House.create(name: "Stark", sigil: "https://s-media-cache-ak0.pinimg.com/236x/7c/d1/05/7cd1056e8ec3bc00b9448c42d6466347.jpg", motto: "Winter is coming.")
targaryen = House.create(name: "Targaryen", sigil: "http://awoiaf.westeros.org/images/3/3f/House_Blackfyre_crest.png", motto: "Fire and blood.")

tyrion = Character.create(name: "Tyrion Lannister", alive: true, special: "Gold", house: lannister, img_url:"https://screenshots.en.sftcdn.net/en/scrn/69659000/69659412/tyrion-lannister-wallpaper-pack-01-700x525.png")
joffrey = Character.create(name: "Joffrey Lannister", alive: false, special: "Gold", house: lannister, img_url:"https://admin.mashable.com/wp-content/uploads/2014/04/joffrey.baratheon.inside.jpg")
arya = Character.create(name: "Arya Stark", alive: true, special: "Direwolf", house: stark, img_url:"http://fullhdpictures.com/wp-content/uploads/2015/10/Game-of-Thrones-Arya-Stark-Wallpaper.jpg")
rob = Character.create(name: "Rob Stark", alive: false, special: "Direwolf", house: stark, img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/1/1b/HBO-drama-Game-of-Thrones-Season-3-HD-characters-wallpaper-1600x1200-09.jpg/revision/latest?cb=20130603061845")
daenerys = Character.create(name: "Daenerys Targaryen", alive: true, special: "Dragon", house: targaryen, img_url:"http://fullhdpictures.com/wp-content/uploads/2015/10/Game-of-Thrones-Daenerys-Targaryen-Wallpapers.jpg")
rhaegar = Character.create(name: "Rhaegar Targaryen", alive: true, special: "Dragon", house: targaryen, img_url:"http://quintype-01.imgix.net/thequint/2016-05/db799391-0e07-4fa5-ab16-3dadef706703/Rhaegar-Targaryen.jpg")
