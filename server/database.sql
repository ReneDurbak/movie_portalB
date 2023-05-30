CREATE DATABASE moviePortal;


CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    genre_id INT,
    title_genre VARCHAR(255) NOT NULL,
    title_movie VARCHAR(255) NOT NULL,
    year INT, 
    summary VARCHAR(6500) NOT NULL,
    imageurl TEXT
);

CREATE TABLE genre(
    genre_id INT,
    title_genre VARCHAR(255)
);







    
INSERT INTO movies (genre_id, title_genre, title_movie, year, summary, imageurl) VALUES
    (1, 'Action', 'Deadpool', 2016, 'This is the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.', 'https://static.wikia.nocookie.net/marveldatabase/images/0/05/Deadpool_%28film%29_poster_007.jpg'),
    (1, 'Action', 'Jurassic World', 2015, 'Twenty-two years after the original Jurassic Park failed, the new park, also known as Jurassic World, is open for business. After years of studying genetics, the scientists on the park genetically engineer a new breed of dinosaur, the Indominus Rex. When everything goes horribly wrong, will our heroes make it off the island?', 'https://static.posters.cz/image/1300/plagaty/jurassic-world-i114154.jpg'),
    (1, 'Action', 'Kingsman: The Golden Circle', 2015, 'After the Kingsman headquarters are blown up by a psychotic criminal named Poppy Adams (Julianne Moore), the surviving agents find their way to an allied secret organization based in Kentucky, named "Statesman". The two agencies must now work together in order to save the world and take down the so called "Golden Circle".', 'https://images.moviesanywhere.com/05afa9ca1a1e4a8d1ebc1cd5d6b7cd14/0cf21627-51fa-4e99-9abc-666e2b68874c.jpg'),
    (1, 'Action', 'Suicide Squad', 2016, 'It feels good to be bad...Assemble a team of the world s most dangerous, incarcerated Super Villains, provide them with the most powerful arsenal at the government s disposal, and send them off on a mission to defeat an enigmatic, insuperable entity. U.S. intelligence officer Amanda Waller has determined only a secretly convened group of disparate, despicable individuals with next to nothing to lose will do. However, once they realize they weren t picked to succeed but chosen for their patent culpability when they inevitably fail, will the Suicide Squad resolve to die trying, or decide it s every man for himself?', 'https://www.dcplanet.fr/wp-content/uploads/2016/08/Suicide_Squad_Poster.jpg'),
    (2, 'Adventure','The Martian', 2015, 'During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive. Millions of miles away, NASA and a team of international scientists work tirelessly to bring "the Martian" home, while his crewmates concurrently plot a daring, if not impossible, rescue mission. As these stories of incredible bravery unfold, the world comes together to root for Watney s safe return.', 'https://static.wikia.nocookie.net/the-martian/images/5/52/The_Martian_poster_3.jpg'),
    (2, 'Adventure', 'San Andreas', 2015, 'In San Andreas, California is experiencing a statewide earthquake that goes on record as easily the biggest earthquake in history. Dwayne Johnson plays Ray Gaines, a helicopter rescue pilot for the Los Angeles Fire Department, who is trying to find his daughter, Blake (Alexandra Daddario), who is in San Francisco amid-st the chaos. Ray s estranged wife, Emma, is forced to turn to Ray for help, as he is her last resort. Together they journey to save their daughter.', 'https://s3.viva.pl/newsy/plakat-filmu-drapacz-chmur-dwayne-johnson-469360-movie_cover.jpg'),
    (2, 'Adventure', 'Assassin s Creed', 2016, 'Through a revolutionary technology that unlocks his genetic memories, Callum Lynch (Michael Fassbender) experiences the adventures of his ancestor, Aguilar de Nerha, in 15th Century Spain. Callum discovers he is descended from a mysterious secret society, the Assassins, and amasses incredible knowledge and skills to take on the oppressive and powerful Templar organization in the present day.', 'https://media.titanbooks.com/catalog/products/9115/Untitled_28.jpg'),
    (2, 'Adventure', 'Transformers: The Last Knight', 2017, 'Optimus Prime finds his dead home planet, Cybertron, in which he comes to find he was responsible for its destruction. He finds a way to bring Cybertron back to life, but in order to do so, Optimus needs to find an artifact that is on Earth.', 'https://static.wikia.nocookie.net/transformers/images/2/22/Transformers_The_Last_Knight_Poster_%281%29.jpg'),
    (3, 'Comedy', 'Suck Me Shakespeer 2', 2015, 'Mr. Müller and his class are taking a school trip to Thailand to strengthen the reputation of their school.', 'https://www.cervenykoberec.cz/wp-content/uploads/2015/07/fakju_pane_uciteli_2_plakat1.jpg'),
    (3, 'Comedy', 'Suck Me Shakespeer 3', 2017, 'A bank robber becomes a teacher after being released from prison and finds himself at the center of a number of crazy adventures.', 'https://www.cine-max.sk/fileadmin/user_upload/fakju-pan-profesor-3-00.jpg'),
    (3, 'Comedy', 'Ted 2', 2015, 'Months after John s divorce, Ted and Tami-Lynn s marriage seems to be on the same road. To patch things up, Ted and Tami-Lynn plan to have a child with John s help, but their failed efforts backfire disastrously. Namely, Ted is declared property by the government, and he loses all of his civil rights. Now, Ted must fight a seemingly hopeless legal battle with an inexperienced young lawyer to regain his rightful legal status. Unfortunately, between Ted s drunken idiocies and sinister forces interested in this situation to exploit him, Ted s quest has all the odds against him.', 'https://m.media-amazon.com/images/I/91TKDSqiI0L._AC_UF894,1000_QL80_.jpg'),
    (3, 'Comedy', 'Baywatch', 2017, 'In sun-kissed Emerald Bay, the vigorous Lieutenant Mitch Buchannon and Baywatch, his elite team of hand-picked and perfectly tanned lifeguards, protect the bay, keeping both sunbathers and beach lovers safe. However, this summer, two new eager trainees will join the demanding life-saving program, as well as an insubordinate former Olympic swimmer, who are all called to prove their worth on the lifeguard towers just on time when a new synthetic street drug begins to infest the Emerald Bay: the flakka. Without a doubt, this calls for some serious undercover teamwork action, as the badgeless heroes in spandex comb the beach for shady newcomers and nefarious entrepreneurs with hidden agendas of their own. Can Mitch s band save the bay?', 'https://cdn.cinematerial.com/p/297x/ih8hgl3r/baywatch-movie-poster-md.jpg'),
    (4, 'Fantasy', 'Avatar: The Way of Water', 2023, 'Several years after the Na vi repelled the RDA invasion Jake Sully and his family are living on Pandora. Things seem peaceful but the RDA has other plans, invading and capturing Pandora. Sully forms a guerrilla group to try to expel the invaders.', 'https://wallpapercave.com/wp/wp8213746.jpg'),
    (4, 'Fantasy', 'The Flash', 2022, 'Barry Allen is struck by a bolt of lightning and thus, an extraordinary power is born inside him: The Speed Force. When he uses this power to run back in time and save his mother, he creates a world without heroes and General Zod has returned. To defeat him, his only hope rest in the hands of a retired Batman, another Barry and an imprisoned kryptonian.', 'https://d1hwmph06ue357.cloudfront.net/new_test/wp-content/uploads/2015/08/keyart-single-the-flash-vertical2.jpg'),
    (4, 'Fantasy', 'Spider-Man: No Way Home', 2021, 'Peter Parker s secret identity is revealed to the entire world. Desperate for help, Peter turns to Doctor Strange to make the world forget that he is Spider-Man. The spell goes horribly wrong and shatters the multiverse, bringing in monstrous villains that could destroy the world.', 'https://wallpaperaccess.com/full/5849982.jpg'),
    (4, 'Fantasy', 'The Batman', 2022, 'Two years of nights have turned Bruce Wayne into a nocturnal animal. But as he continues to find his way as Gotham s dark knight Bruce is forced into a game of cat and mouse with his biggest threat so far, a manic killer known as "The Riddler" who is filled with rage and determined to expose the corrupt system whilst picking off all of Gotham s key political figures. Working with both established and new allies, Bruce must track down the killer and see him brought to justice, while investigating his father s true legacy and questioning the effect that he has had on Gotham so far as "The Batman."', 'https://www.reelviews.net/resources/img/posters/thumbs/the_batman_poster.jpg'),
    (5, 'Drama', 'Air', 2023, 'The movie explores how Nike s basketball shoe division was struggling in 1984 due to low sales, and how the company s Marketing VP Rob Strasser and CEO Phil Knight tasked basketball talent scout Sonny Vaccaro to find a new spokesperson for their shoes. Although they considered third draft pick Michael Jordan off limits due to his preference for Adidas and Converse, Vaccaro convinced them that Jordan was a generational talent, and that Nike should pursue him and try to convince Jordan to sign with Nike.', 'https://cdn.cinematerial.com/p/297x/kgoauln3/air-movie-poster-md.jpg'),
    (5, 'Drama', 'Ford vs Ferrari', 2019, 'As Enzo Ferrari s fast Rosso-Corsa racing cars dominate the mid-1960s motorsport world, the American car designer, Carroll Shelby, is forced to retire after winning the demanding 1959 24 Hours of Le Mans endurance race. But, before long, an unexpected proposition by the Vice President of Henry Ford s motor company, Lee Iacocca, will offer an opportunity to beat the Italians at their own game. Now, under those pressing circumstances, the British sports car driver and racing engineer, Ken Miles, reluctantly agrees to lend a hand and improve the firm s image, as Ford s race team has less than ninety days to rewrite history. As a result, the non-conformist duo comes up with the mighty Ford GT40 Mk I high-performance racing car. Can Shelby and Miles break Ferrari s streak?', 'https://m.media-amazon.com/images/M/MV5BMmMyNTQ3MTEtMjI2OC00NjdlLTk2Y2ItZTI5YzAyNzFiNjA5XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg'),
    (5, 'Drama', 'Bohemian Rhapsody', 2018, 'Bohemian Rhapsody is a foot-stomping celebration of Queen, their music and their extraordinary lead singer Freddie Mercury. Freddie defied stereotypes and shattered convention to become one of the most beloved entertainers on the planet. The film traces the meteoric rise of the band through their iconic songs and revolutionary sound. They reach unparalleled success, but in an unexpected turn Freddie, surrounded by darker influences, shuns Queen in pursuit of his solo career. Having suffered greatly without the collaboration of Queen, Freddie manages to reunite with his bandmates just in time for Live Aid. While bravely facing a recent AIDS diagnosis, Freddie leads the band in one of the greatest performances in the history of rock music. Queen cements a legacy that continues to inspire outsiders, dreamers and music lovers to this day', 'https://e1.pxfuel.com/desktop-wallpaper/555/275/desktop-wallpaper-bohemian-rhapsody-movie-poster-bohemian-rhapsody-movie-thumbnail.jpg'),
    (5, 'Drama', 'Joker', 2019, 'A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother- Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society he heads downwards on a spiral, in turn showing how his alter ego "Joker", came to be.', 'https://mir-s3-cdn-cf.behance.net/project_modules/fs/c58b4681277211.5cfa6e54a6d3d.jpg'),
    (1, 'Action','Top Gun: Maverick', 2022,'Idaho, 2016. Scarred by the profound wounds of grief and guilt, couchbound Charlie, an online writing instructor living with chronic obesity, now has a crystal-clear view of his secret intentions. And confined to his claustrophobic and musty apartment, the self-destructive shut-in has all the time in the world to contemplate the damaging faults of the past, fatherhood, and reconciliation. Because, more than anything, flawed Charlie longs for communication and reconnection. After all, he hasn"t spoken to his estranged, angry teenage daughter Ellie in years. But everyone knows whales don"t live in the shallows. Do love and forgiveness have the power to wipe away the tears and the painful mistakes of a lifetime?', 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/top_gun_maverick_ver2_513x.jpg'),
    (6, 'Horror','Scream', 2022, 'Like the original movie 25 years ago, a cute teenage girl is at home alone when the phone rings. A man wants to play a game with her. With the threat of killing her best friend, Tara"s forced to play along. She barely survives the ghost face masked intruder"s stabbing. Her 5 year older sister, Sam(antha), who left home at 18 due to mental problems, Sam"s boyfriend and Tara"s high school friends visit her at the hospital. Later on in a bar, a guy provokes the friends and is later attacked outside in the parking lot by Ghostface. Sam receives a call from him at the hospital and then he unsuccessfully attacks her. She later reveals family secrets to her sister. Sam contacts one of the original victims, Dewey, for help. He warns two other original victims, Sidney Prescott and Gale Weathers, about Ghostface being back. Who is Ghostface? How many more must die?', 'https://cdn11.bigcommerce.com/s-mmafe1g4n3/images/stencil/1280x1280/products/4691/13552/MM00306163__80042.1667814635.jpg'),
    (5, 'Drama','The Whale', 2022, 'Idaho, 2016. Scarred by the profound wounds of grief and guilt, couchbound Charlie, an online writing instructor living with chronic obesity, now has a crystal-clear view of his secret intentions. And confined to his claustrophobic and musty apartment, the self-destructive shut-in has all the time in the world to contemplate the damaging faults of the past, fatherhood, and reconciliation. Because, more than anything, flawed Charlie longs for communication and reconnection. After all, he hasn"t spoken to his estranged, angry teenage daughter Ellie in years. But everyone knows whales don"t live in the shallows. Do love and forgiveness have the power to wipe away the tears and the painful mistakes of a lifetime?', 'https://image.tmdb.org/t/p/original/tIOoin8nXWibN5zMJg32oAs63uS.jpg'),
    (7, 'Thriller','Fall', 2022, 'Drowning in a sea of grief 51 painful weeks after the life-altering incident that scarred her for life, emotionally fragile rock climber Becky reluctantly decides to confront her fears, and as her thrill-seeking friend Hunter re-enters Becky"s ruined life, the two experienced climbers embark on a high-risk climbing adventure to the top of the abandoned 2,000-foot B67 TV tower: an anxiety-inducing, vertigo-inspiring construction of weather-beaten metal and rattling rivets in the middle of the Mojave desert. However, when the peril-laden climb doesn"t go as planned, the women must summon up every last ounce of courage and strength to devise a plan for a safe return home--or die trying.', 'https://image.pmgstatic.com/cache/resized/w420/files/images/film/posters/166/392/166392389_ba4186.jpg'),
    (3, 'Comedy','Once Upon a Time in Hollywood', 2019, 'Quentin Tarantino"s Once Upon a Time... in Hollywood visits 1969 Los Angeles, where everything is changing, as TV star Rick Dalton (Leonardo DiCaprio) and his longtime stunt double Cliff Booth (Brad Pitt) make their way around an industry they hardly recognize anymore. The ninth film from the writer-director features a large ensemble cast and multiple storylines in a tribute to the final moments of Hollywood"s golden age.', 'https://pbs.twimg.com/media/EAfv8eoW4AA3V1f.jpg'),
    (6, 'Horror','Terrifier 2', 2022, 'In Miles County, Art the Clown is mysteriously revived in the morgue and kills the coroner, in the beginning of his crime wave in the Halloween night. The teenagers Sienna and her brother Jonathan are hunted down by Art and his partner, The Little Pale Girl.', 'https://amovieguy.com/wp-content/uploads/2022/10/terryfy-2.jpg'),
    (1, 'Action','Furious 7', 2015, 'Dominic and his crew thought they"d left the criminal mercenary life behind. They"d defeated international terrorist Owen Shaw and went their separate ways. But now, Shaw"s brother, Deckard Shaw, is out killing the crew one by one for revenge. Worse, a Somalian terrorist called Jakarde and a shady government official called "Mr. Nobody" are both competing to steal a computer terrorism program called "God"s Eye," that can turn any technological device into a weapon. Torretto must reconvene with his team to stop Shaw and retrieve the God"s Eye program while caught in a power struggle between the terrorist and the United States government.', 'https://picfiles.alphacoders.com/354/thumb-1920-354258.jpg'),
    (1, 'Action','The Fate of the Furious', 2017, 'Now that Dominic Toretto (Vin Diesel) and Letty Ortiz (Michelle Rodriguez) are on their honeymoon, and Brian (Paul Walker) and Mia (Jordana Brewster) have retired from the game, and the rest of the crew has been exonerated, the globetrotting team has found a semblance of a normal life. But when a mysterious woman seduces Dom into the world of crime he can"t seem to escape, and a betrayal of those closest to him, they will face trials that will test them as never before. From the shores of Cuba and the streets of New York City to the icy plains off the arctic Barents Sea, the elite force will crisscross the globe to stop an anarchist from unleashing chaos on the world"s stage, and to bring home the man who made them a family.—harpreet phambercalled "Mr. Nobody" are both competing to steal a computer terrorism program called "God"s Eye," that can turn any technological device into a weapon. Torretto must reconvene with his team to stop Shaw and retrieve the God"s Eye program while caught in a power struggle between the terrorist and the United States government.', 'https://wallpapercave.com/wp/wp6702447.jpg'),
    (1, 'Action','F9: The Fast Saga', 2021, 'Dom and the crew must take on an international terrorist who turns out to be Dom and Mia"s estranged brother.', 'https://collider.com/wp-content/uploads/2020/01/fast-and-furious-9-vin-diesel-poster.jpg'),
    (1, 'Action','Fast X', 2023, 'Dom Toretto and his family are targeted by the vengeful son of drug kingpin Hernan Reyes. The end of the road begins. Fast X, the tenth film in the Fast and Furious Saga, launches the final chapters of one of cinema"s most storied and popular global franchises, now in its third decade and still going strong with the same core cast and characters as when it began. Over many missions and against impossible odds, Dom Toretto (Vin Diesel) and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they"ve ever faced: A terrifying threat emerging from the shadows of the past who"s fueled by blood revenge, and who is determined to shatter this family and destroy everything-and everyone-that Dom loves, forever. In 2011"s Fast Five, Dom and his crew took out nefarious Brazilian drug kingpin Hernan Reyes and decapitated his empire on a bridge in Rio De Janeiro. What they didn"t know was that Reyes son, Dante (Aquaman"s Jason Momoa), witnessed it all and has spent the last 12 years masterminding a plan to make Dom pay the ultimate price. Dante"s plot will scatter Dom"s family from Los Angeles to the catacombs of Rome, from Brazil to London and from Portugal to Antarctica. New allies will be forged and old enemies will resurface. But everything changes when Dom discovers that his own 8-year-old son (Leo Abelo Perry, Black-ish) is the ultimate target of Dante"s vengeance. Directed by Louis Leterrier (Clash of the Titans, The Incredible Hulk), Fast X stars returning cast members Michelle Rodriguez, Tyrese Gibson, Chris "Ludacris" Bridges, Nathalie Emmanuel, Jordana Brewster, Sung Kang, Jason Statham, John Cena and Scott Eastwood, with Oscar® winner Helen Mirren and Oscar® winner Charlize Theron. The film also features an extraordinary new cast including Oscar® winner Brie Larson as Tess, a rogue representative from the Agency; Alan Richtson (Reacher) as Aimes, the new head of the Agency who doesn"t hold the same fondness for Dom"s crew as his predecessor, Mr. Nobody; Daniela Melchior (The Suicide Squad) as a Brazilian street racer with a powerful tie to Dom"s past; and legendary Oscar® winner Rita Moreno as Dom and Mia"s Abuelita Toretto. Fast X is produced by Neal H. Moritz, Vin Diesel, Justin Lin, Jeff Kirschenbaum and Samantha Vincent. The executive producers are Joseph M. Caracciolo, Jr., David Cain, Chris Morgan, Amanda Lewis and Mark Bomback.', 'https://static.cinemagia.ro/img/db/movie/10/38/737/fast-x-912292l.jpg'),
    (5, 'Drama','Don"t Worry Darling', 2022, 'A 1950s housewife living with her husband in a utopian experimental community begins to worry that his glamorous company could be hiding disturbing secrets.', 'https://m.media-amazon.com/images/I/71yno6PByYL._AC_UF894,1000_QL80_.jpg'),
    (1, 'Action','No Time to Die', 2021, 'Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', 'https://www.vintagemovieposters.co.uk/wp-content/uploads/2020/10/IMG_0075-scaled.jpeg'),
    (8, 'Sci-Fi', 'Tenet', 2020, 'In a twilight world of international espionage, an unnamed CIA operative, known as The Protagonist, is recruited by a mysterious organization called Tenet to participate in a global assignment that unfolds beyond real time. The mission: prevent Andrei Sator, a renegade Russian oligarch with precognition abilities, from starting World War III. The Protagonist will soon master the art of "time inversion" as a way of countering the threat that is to come.', 'https://m.media-amazon.com/images/I/91BnDPpVcBL.jpg'),
    (6, 'Horror', 'It', 2017, 'In the Town of Derry, the local kids are disappearing one by one. In a place known as "The Barrens", a group of seven kids are united by their horrifying and strange encounters with an evil clown and their determination to kill It.', 'https://static.posters.cz/image/750/plagaty/it-georgie-i57743.jpg'),
    (6, 'Horror', 'It Chapter Two', 2019, 'Defeated by members of the Losers" Club, the evil clown Pennywise returns 27 years later to terrorize the town of Derry, Maine, once again. Now adults, the childhood friends have long since gone their separate ways. But when people start disappearing, Mike Hanlon calls the others home for one final stand. Damaged by scars from the past, the united Losers must conquer their deepest fears to destroy the shape-shifting Pennywise -- now more powerful than ever.', 'https://www.chillistyle.eu/fotky22517/fotos/_vyrp12_18990IT-Chapter-Two-Movie-Poster-2.jpg'),
    (1, 'Action', 'The Northman', 2022, 'The Viking Age. With a mind aflame with hate and revenge, Prince Amleth, the wronged son of King Aurvandill War-Raven, heads to cold, windswept Iceland to retrieve what was stolen from him: a father, a mother, and a kingdom. And like a war dog picking up the enemy"s scent, brutal Amleth embarks on a murderous quest to find the hateful adversary, whose life is forever woven together with his by the threads of fate. Now, in the name of Valhalla, no one can stop the Northman, not even God.', 'https://www.themoviedb.org/t/p/original/aSSJMnHknzKjlZ6zybwD7eyJ4Po.jpg'),
    (5, 'Drama', 'After', 2019, 'Based on Anna Todd"s novel, AFTER follows Tessa (Langford), a dedicated student, dutiful daughter, and loyal girlfriend to her high-school sweetheart, as she enters her first semester in college armed with grand ambitions for her future. Her guarded world opens up when she meets the dark, mysterious Hardin Scott (Tiffin), a magnetic, brooding rebel who makes her question all she thought she knew about herself and what she wants from life.', 'https://teaser-trailer.com/wp-content/uploads/After-film-poster.jpg'),
    (1, 'Action', 'Day Zero', 2022, 'When society breaks down due to a violent outbreak that turns victims into undead monsters, a former elite soldier breaks out of jail to find his family.', 'https://wellgousa.com/sites/default/files/2023-05/DayZero-FilipinoActionHorrorThriller-WellGoUSA-KeyArtPoster-812x1200.jpg'),
    (1, 'Action', 'John Wick: Chapter 4', 2023, 'Condemned by the tyrannical High Table to be on the run for the rest of his life, deadly assassin maestro John Wick (2014) embarks on a Sisyphean mission of suicidal fury to decide his fate after the merciless carnage in John Wick: Chapter 3 - Parabellum (2019). At last, John"s violent journey, fuelled by vengeance and grief, ultimately leads him to a fateful confrontation with his former employers, the crime masters that forced him into exile. And as the blood-stained vendetta to destroy those who pull the strings continues, old companions face the brutal consequences of friendship, and all-powerful, well-connected adversaries emerge to bring Wick"s head on a platter. But talk is cheap--now guns have the final say. Can Baba Yaga, the grim messiah of death, make every bullet count in this bloody, once-and-for-all struggle for freedom?', 'https://www.themoviedb.org/t/p/original/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg'),
    (2, 'Adventure', 'Avengers: Endgame', 2019, 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos"s actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...', 'https://i.etsystatic.com/23402008/r/il/0a9f0e/3339585062/il_570xN.3339585062_paw3.jpg'),
    (7, 'Thriller', 'Wrath of Man', 2021, 'Mysterious and wild-eyed, a new security guard for a cash truck surprises his co-workers when he unleashes precision skills during a heist. The crew is left wondering who he is and where he came from. Soon, the marksman"s ultimate motive becomes clear as he takes dramatic and irrevocable steps to settle a score.', 'https://www.themoviedb.org/t/p/original/28mcCmmVbCUMeI7MEQrCFbzUifh.jpg'),
    (1, 'Action', 'John Wick: Chapter 3 - Parabellum', 2019, 'In this third installment of the adrenaline-fueled action franchise, skilled assassin John Wick (Keanu Reeves) returns with a $14 million price tag on his head and an army of bounty-hunting killers on his trail. After killing a member of the shadowy international assassin"s guild, the High Table, John Wick is excommunicado, but the world"s most ruthless hit men and women await his every turn.', 'https://musicart.xboxlive.com/7/df1a5100-0000-0000-0000-000000000002/504/image.jpg'),
    (1, 'Action', 'The King"s Man', 2021, 'In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.', 'https://www.cine-max.sk/fileadmin/user_upload/kingsman-00-2022.jpg'),
    (5, 'Drama', '365 Days', 2020, 'Massimo Torricelli, handsome young boss of a Sicilian Mafia family, has no other option but to take over after his father is assassinated. Laura is a sales director in a luxurious hotel in Warsaw. She has a successful career, but her private life lacks passion. She is taking one last shot to save her relationship. With her boneheaded boyfriend Martin and some other friends, she takes a trip to Sicily. She does not expect that Massimo, the most dangerous man on the island, will get in her way, kidnap her, hold her captive, and give her 365 days--to fall in love with him.', 'https://m.media-amazon.com/images/M/MV5BMDdhYzNkOWQtYWNlNi00NDdjLWJlZDMtMjJjZDYyNjAxM2U1XkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg'),
    (1, 'Action', 'Jumanji: The Next Level', 2019, 'The gang is back but the game has changed. As they return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored, from the arid deserts to the snowy mountains, in order to escape the world"s most dangerous game.', 'https://m.media-amazon.com/images/I/81L4HT0pS5L.jpg'),
    (1, 'Action', 'Cold Hell', 2017, 'A vicious serial killer is targeting prostitutes in Vienna, Austria. A tough young woman from Turkey who works as a taxi driver witnesses one of the murders and becomes a target. The police are of no help, so she must stop him herself. Özge Dogruol is a young woman who left Turkey to find a better life for herself in Austria. ', 'https://ih1.redbubble.net/image.1253325609.5869/flat,750x,075,f-pad,750x1000,f8f8f8.jpg'),
    (8, 'Sci-Fi', 'The Matrix Resurrections', 2021, 'Suffering from palpable delusions, burnt-out Thomas Anderson, the award-winning creator of The Matrix (1999) video game series, now relies on potent blue pills to keep his inner demons at bay. Then, amid inexplicable, reality-defying visions, Thomas spots Tiffany, a familiar-looking perfect stranger evoking strange emotions, and his already fragile mental state starts to deteriorate. As Mr Anderson yearns for an explanation while teetering on the brink of depression, once more, he confronts a pressing dilemma and the burden of choice. On the one hand, blissful ignorance guarantees the illusion of safety. On the other hand, the unbearable truth of reality can only mean one thing: the elaborate Matrix goes beyond the limits of imagination. But, somehow, Thomas already knows what he has to do. However, does he want to know how deep the rabbit hole goes?', 'https://www.themoviedb.org/t/p/original/8c4a8kE7PizaGQQnditMmI1xbRp.jpg'),
    (4, 'Fantasy', 'Aquaman', 2019, 'Born upon the shores of the surface world, Arthur Curry (Jason Momoa) discovers that he is only half human, with the other half of his blood being of Atlanteean descent, thus making him the rightful heir to the throne of the undersea kingdom of Atlantis. However, Arthur learns that Atlantis is being ruled by his malicious half-brother Orm (Patrick Wilson), who seeks to unite the seven underwater kingdoms and wage war upon the surface. With aid from Nuidis Vulko (Willem Dafoe) and the gorgeous Mera (Amber Heard), Arthur must discover the full potential of his true destiny and become Aquaman in order to save Atlantis and the surface from Orm"s evil plot.', 'https://m.media-amazon.com/images/I/71y+E9MaURL.jpg'),
    (5, 'Drama', 'Wind River', 2017, 'East of Boulder Flats, deep into the vast and unforgiving white territory of the Wind River Indian Reservation, the seasoned game tracker, Cory Lambert, discovers the frozen body of the young Native American, Natalie. As this is a federal crime, the F.B.I. dispatches the inexperienced but courageous agent Jane Banner to lead the investigation, however, the unprepared outsider will soon team up with Cory to unravel the mystery of Natalie"s murder. Before long, Cory will inevitably have to face his own past, while at the same time, both he and Jane are thirsting to see justice done. In the end, will this be a fruitful alliance?', 'https://mir-s3-cdn-cf.behance.net/project_modules/hd/5c2ebf56400273.59ad76b13bb1d.jpg'),
    (2, 'Adventure', 'Aladdin', 2019, 'A kind-hearted street urchin Aladdin vies for the love of the beautiful princess Jasmine, the princess of Agrabah. When he finds a magic lamp, he uses the genie"s magic power to make himself a prince in order to marry her. He"s also on a mission to stop the powerful Jafar who plots to steal the magic lamp that could make his deepest wishes come true.', 'https://i.ebayimg.com/images/g/QvYAAOSwW95dJCmn/s-l1600.jpg');



