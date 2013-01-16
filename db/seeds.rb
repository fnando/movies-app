require "fileutils"

def create_movie(options = {})
  image_name = options.delete(:image)
  movie = Movie.create!(
    options.merge(:poster_url => "#{ENV.fetch("HOST")}/posters/#{image_name}")
  )

  upload_dir = Rails.root.join("public/posters")

  FileUtils.mkdir_p upload_dir.to_s

  FileUtils.cp Rails.root.join("db/posters/#{image_name}"),
    upload_dir.join(image_name)
end

create_movie({
  :title => "Inception",
  :summary => "In a world where technology exists to enter the human mind through dream invasion, a highly skilled thief is given a final chance at redemption which involves executing his toughest job to date: Inception.",
  :release_year => 2010,
  :image => "inception.jpg"
})

create_movie({
  :title => "The Avengers",
  :summary => "Nick Fury of S.H.I.E.L.D. brings together a team of super humans to form The Avengers to help save the Earth from Loki and his army.",
  :release_year => 2012,
  :image => "avengers.jpg"
})

create_movie({
  :title => "The Matrix",
  :summary => "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
  :release_year => 1999,
  :image => "matrix.jpg"
})

create_movie({
  :title => "Iron Man",
  :summary => "When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.",
  :release_year => 2008,
  :image => "ironman.jpg"
})

create_movie({
  :title => "Pulp Fiction",
  :summary => "The lives of two mob hit men, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
  :release_year => 1994,
  :image => "pulpfiction.jpg"
})

create_movie({
  :title => "Inglourious Basterds",
  :summary => "In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner's vengeful plans for the same.",
  :release_year => 2009,
  :image => "inglouriousbasterds.jpg"
})

create_movie({
  :title => "Shaun of the Dead",
  :summary => "A man decides to turn his moribund life around by winning back his ex-girlfriend, reconciling his relationship with his mother, and dealing with an entire community that has returned from the dead to eat the living.",
  :release_year => 2004,
  :image => "shaunofthedead.jpg"
})

create_movie({
  :title => "Dawn of the Dead",
  :summary => "A nurse, a policeman, a young married couple, a salesman, and other survivors of a worldwide plague that is producing aggressive, flesh-eating zombies, take refuge in a mega Midwestern shopping mall.",
  :release_year => 2004,
  :image => "dawnofthedead.jpg"
})

create_movie({
  :title => "The Big Lebowski",
  :summary => %["Dude" Lebowski, mistaken for a millionaire Lebowski, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.],
  :release_year => 1998,
  :image => "thebiglebowski.jpg"
})

create_movie({
  :title => "Fight Club",
  :summary => "An insomniac office worker and a devil-may-care soap maker form an underground fight club that transforms into a violent revolution.",
  :release_year => 1999,
  :image => "fightclub.jpg"
})

create_movie({
  :title => "Rock'n'Rolla",
  :summary => "Lenny Cole, a London mob boss, puts the bite on all local real estate transactions. For substantial fees, he's helping Uri Omovich, a Russian developer. As a sign of good faith, Omovich loans Cole a valuable painting, promptly stolen off Cole's wall. While Cole's men, led by the dependable Archie, look for the canvas, three local petty criminals, the Wild Bunch, steal money from the Russian using inside information from his accountant, the lovely Stella. Meanwhile, a local drug-addled rocker, Johnny Quid, is reported drowned, and his connection to Cole is the key to unraveling the deceits and double crosses of life in the underworld.",
  :release_year => 2008,
  :image => "rocknrolla.jpg"
})

create_movie({
  :title => "Kick-Ass",
  :summary => "Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a super-hero, even though he has no powers, training or meaningful reason to do so.",
  :release_year => 2010,
  :image => "kickass.jpg"
})

create_movie({
  :title => "Eternal Sunshine of the Spotless Mind",
  :summary => "A couple undergo a procedure to erase each other from their memories when their relationship turns sour, but it is only through the process of loss that they discover what they had to begin with.",
  :release_year => 2004,
  :image => "eternalsunshine.jpg"
})

create_movie({
  :title => "The Dark Knight Rises",
  :summary => "Eight years on, a new terrorist leader, Bane, overwhelms Gotham's finest, and the Dark Knight resurfaces to protect a city that has branded him an enemy.",
  :release_year => 2012,
  :image => "darkknightrises.jpg"
})

create_movie({
  :title => "Forrest Gump",
  :summary => "Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny, eludes him.",
  :release_year => 1994,
  :image => "forrestgump.jpg"
})
