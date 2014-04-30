# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  {
    name: "Taylor Smith",
    email: "taylor@themakersquare.com"
  },
  {
    name: "Mike Ornellas",
    email: "mike@themakersquare.com"
  }
  ])

Video.create([
  {
    title: "Gladiator",
    description: "A great movie",
    youtube_id: "rNdKBPcVGJI",
    user_id: 1
  },
  {
    title: "Pacific Rim",
    description: "Giant robots fighting giant sea monsters",
    youtube_id: "SSNU6t0pmkw",
    user_id: 2
  },
  {
    title: "Frozen",
    description: "Cold 3D Animation",
    youtube_id: "FLzfXQSPBOg",
    user_id: 1
  }
  ])

Sound.create([
  {
    title: "Haze Boogie Life",
    soundcloud_url:"https://soundcloud.com/sinden/mykki-blanco-haze-boogie-life"
  },
  {
    title: "Bionic",
    soundcloud_url:"https://soundcloud.com/feudalmusicgroup/orka-veer-bionic"
  }
    ])

video1 = Video.create(
  {
    title: "Shaolin Kung Fu Eagle Form",
    description: "Competition form",
    youtube_id: "iirtLX8New",
    user_id: 2
  }
  )

video2 = Video.create(
  {
    title: "Martial Arts- Shaolin Kung Fu- Eagle Claw Style",
    description: "Eagle claw demo",
    youtube_id: "a-CzRjBvvjA",
    user_id: 1
  }
  )

video1.comments.create([
  {
    content: "Nice form; sloppy footwork, though."
  }
  ])

video2.comments.create([
  {
  content: "Awesome form. Perfect technique. Great speed."
  }
  ])

user1 = User.find(1)
user2 = User.find(2)
sound1 = Sound.find(1)
sound2 = Sound.find(2)

new_comment = user1.comments.create(
  :commentable => video1, :content => "Wow, such kung fu!"
)

newer_comment = user2.comments.create(
  :commentable => video2, :content => "This is co crazy!"
)

sound_comment = user1.comments.create(
  :commentable => sound1, :content => "Mad beats"
  )
