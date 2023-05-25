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
    genre_id SERIAL PRIMARY KEY,
    title_genre VARCHAR(255)
);



INSERT INTO genre (title_genre) VALUES
    ('action'),
    ('adventure'),
    ('comedy'),
    ('fantasy'),
    ('drama');


    
INSERT INTO movies (genre_id, title_genre, title_movie, year, summary, imageurl) VALUES
    (1, 'Action', 'Deadpool', 2016, 'This is the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.', 'https://m.media-amazon.com/images/M/MV5BZjE5MjMzOWUtNTE2NC00OGNmLTg0YmQtZDE4N2ZiMDRlZWRhXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (2, 'Action', 'Jurassic World', 2015, 'Twenty-two years after the original Jurassic Park failed, the new park, also known as Jurassic World, is open for business. After years of studying genetics, the scientists on the park genetically engineer a new breed of dinosaur, the Indominus Rex. When everything goes horribly wrong, will our heroes make it off the island?', 'https://m.media-amazon.com/images/M/MV5BMjMyNjI3ODQyNV5BMl5BanBnXkFtZTgwNDM5NTk5MjE@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (3, 'Action', 'Kingsman: The Golden Circle', 2015, 'After the Kingsman headquarters are blown up by a psychotic criminal named Poppy Adams (Julianne Moore), the surviving agents find their way to an allied secret organization based in Kentucky, named "Statesman". The two agencies must now work together in order to save the world and take down the so called "Golden Circle".', 'https://m.media-amazon.com/images/M/MV5BMjQ3OTgzMzY4NF5BMl5BanBnXkFtZTgwOTc4OTQyMzI@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (4, 'Action', 'Suicide Squad', 2016, 'It feels good to be bad...Assemble a team of the world s most dangerous, incarcerated Super Villains, provide them with the most powerful arsenal at the government s disposal, and send them off on a mission to defeat an enigmatic, insuperable entity. U.S. intelligence officer Amanda Waller has determined only a secretly convened group of disparate, despicable individuals with next to nothing to lose will do. However, once they realize they weren t picked to succeed but chosen for their patent culpability when they inevitably fail, will the Suicide Squad resolve to die trying, or decide it s every man for himself?', 'https://m.media-amazon.com/images/M/MV5BMDYyOTZhZjctNWYxYy00YWZmLTk5M2EtNzBiODAwZGM5M2RkXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (5, 'Adventure','The Martian', 2015, 'During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive. Millions of miles away, NASA and a team of international scientists work tirelessly to bring "the Martian" home, while his crewmates concurrently plot a daring, if not impossible, rescue mission. As these stories of incredible bravery unfold, the world comes together to root for Watney s safe return.', 'https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (6, 'Adventure', 'San Andreas', 2015, 'In San Andreas, California is experiencing a statewide earthquake that goes on record as easily the biggest earthquake in history. Dwayne Johnson plays Ray Gaines, a helicopter rescue pilot for the Los Angeles Fire Department, who is trying to find his daughter, Blake (Alexandra Daddario), who is in San Francisco amid-st the chaos. Ray s estranged wife, Emma, is forced to turn to Ray for help, as he is her last resort. Together they journey to save their daughter.', 'https://m.media-amazon.com/images/M/MV5BNzZhYmQ2NGMtZmRmYi00NzgzLTllNmUtNDQwZDAxMmE3NzI0XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (7, 'Adventure', 'Assassin s Creed', 2016, 'Through a revolutionary technology that unlocks his genetic memories, Callum Lynch (Michael Fassbender) experiences the adventures of his ancestor, Aguilar de Nerha, in 15th Century Spain. Callum discovers he is descended from a mysterious secret society, the Assassins, and amasses incredible knowledge and skills to take on the oppressive and powerful Templar organization in the present day.', 'https://m.media-amazon.com/images/M/MV5BMTU2Mjc1ODY2OV5BMl5BanBnXkFtZTgwNTMzMTYzMDI@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (8, 'Adventure', 'Transformers: The Last Knight', 2017, 'Optimus Prime finds his dead home planet, Cybertron, in which he comes to find he was responsible for its destruction. He finds a way to bring Cybertron back to life, but in order to do so, Optimus needs to find an artifact that is on Earth.', 'https://m.media-amazon.com/images/M/MV5BN2YwOWM4ODgtZTMzMi00ZmFmLTk5NTEtNmY4ZDcwNzQxNDhjXkEyXkFqcGdeQXVyNTI0NzAyNjY@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (9, 'Comedy', 'Suck Me Shakespeer 2', 2015, 'Mr. Müller and his class are taking a school trip to Thailand to strengthen the reputation of their school.', 'https://m.media-amazon.com/images/M/MV5BMjA1MDcwMTA0Ml5BMl5BanBnXkFtZTgwNTI1MjY5NTE@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (10, 'Comedy', 'Suck Me Shakespeer 3', 2017, 'A bank robber becomes a teacher after being released from prison and finds himself at the center of a number of crazy adventures.', 'https://m.media-amazon.com/images/M/MV5BYjlkYWJjZDItNzA2OS00ZWZjLTg4NmItNWRjMjJjNTZlODU2XkEyXkFqcGdeQXVyMjQ3NzUxOTM@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (11, 'Comedy', 'Ted 2', 2015, 'Months after John s divorce, Ted and Tami-Lynn s marriage seems to be on the same road. To patch things up, Ted and Tami-Lynn plan to have a child with John s help, but their failed efforts backfire disastrously. Namely, Ted is declared property by the government, and he loses all of his civil rights. Now, Ted must fight a seemingly hopeless legal battle with an inexperienced young lawyer to regain his rightful legal status. Unfortunately, between Ted s drunken idiocies and sinister forces interested in this situation to exploit him, Ted s quest has all the odds against him.', 'https://m.media-amazon.com/images/M/MV5BMjEwMDg3MDk1NF5BMl5BanBnXkFtZTgwNjYyODA1NTE@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (12, 'Comedy', 'Baywatch', 2017, 'In sun-kissed Emerald Bay, the vigorous Lieutenant Mitch Buchannon and Baywatch, his elite team of hand-picked and perfectly tanned lifeguards, protect the bay, keeping both sunbathers and beach lovers safe. However, this summer, two new eager trainees will join the demanding life-saving program, as well as an insubordinate former Olympic swimmer, who are all called to prove their worth on the lifeguard towers just on time when a new synthetic street drug begins to infest the Emerald Bay: the flakka. Without a doubt, this calls for some serious undercover teamwork action, as the badgeless heroes in spandex comb the beach for shady newcomers and nefarious entrepreneurs with hidden agendas of their own. Can Mitch s band save the bay?', 'https://m.media-amazon.com/images/M/MV5BNjY4MmM2MGItNDc0MC00MDFlLTg0YzctOWY4MWU5ZDY4N2ZmXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (13, 'Fantasy', 'Avatar: The Way of Water', 2023, 'Several years after the Na vi repelled the RDA invasion Jake Sully and his family are living on Pandora. Things seem peaceful but the RDA has other plans, invading and capturing Pandora. Sully forms a guerrilla group to try to expel the invaders.', 'https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (14, 'Fantasy', 'The Flash', 2022, 'Barry Allen is struck by a bolt of lightning and thus, an extraordinary power is born inside him: The Speed Force. When he uses this power to run back in time and save his mother, he creates a world without heroes and General Zod has returned. To defeat him, his only hope rest in the hands of a retired Batman, another Barry and an imprisoned kryptonian.', 'https://m.media-amazon.com/images/M/MV5BYmZlZTMzZTAtZGM5OS00MWU0LTg5YmMtZDJkMDBlMjAxNjViXkEyXkFqcGdeQXVyNDY2NDU1MzA@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (15, 'Fantasy', 'Spider-Man: No Way Home', 2021, 'Peter Parker s secret identity is revealed to the entire world. Desperate for help, Peter turns to Doctor Strange to make the world forget that he is Spider-Man. The spell goes horribly wrong and shatters the multiverse, bringing in monstrous villains that could destroy the world.', 'https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (16, 'Fantasy', 'The Batman', 2022, 'Two years of nights have turned Bruce Wayne into a nocturnal animal. But as he continues to find his way as Gotham s dark knight Bruce is forced into a game of cat and mouse with his biggest threat so far, a manic killer known as "The Riddler" who is filled with rage and determined to expose the corrupt system whilst picking off all of Gotham s key political figures. Working with both established and new allies, Bruce must track down the killer and see him brought to justice, while investigating his father s true legacy and questioning the effect that he has had on Gotham so far as "The Batman."', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (17, 'Drama', 'Air', 2023, 'The movie explores how Nike s basketball shoe division was struggling in 1984 due to low sales, and how the company s Marketing VP Rob Strasser and CEO Phil Knight tasked basketball talent scout Sonny Vaccaro to find a new spokesperson for their shoes. Although they considered third draft pick Michael Jordan off limits due to his preference for Adidas and Converse, Vaccaro convinced them that Jordan was a generational talent, and that Nike should pursue him and try to convince Jordan to sign with Nike.', 'https://m.media-amazon.com/images/M/MV5BYmNlOTNlYjUtM2U3Yy00M2ZjLTkxZDQtN2NiNGZiZDI0ZjE3XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (18, 'Drama', 'Ford vs Ferrari', 2019, 'As Enzo Ferrari s fast Rosso-Corsa racing cars dominate the mid-1960s motorsport world, the American car designer, Carroll Shelby, is forced to retire after winning the demanding 1959 24 Hours of Le Mans endurance race. But, before long, an unexpected proposition by the Vice President of Henry Ford s motor company, Lee Iacocca, will offer an opportunity to beat the Italians at their own game. Now, under those pressing circumstances, the British sports car driver and racing engineer, Ken Miles, reluctantly agrees to lend a hand and improve the firm s image, as Ford s race team has less than ninety days to rewrite history. As a result, the non-conformist duo comes up with the mighty Ford GT40 Mk I high-performance racing car. Can Shelby and Miles break Ferrari s streak?', 'https://m.media-amazon.com/images/M/MV5BNGQyZWQ2MjUtNWJkYi00MGUxLWIxNGEtNzhjOWI4NDY1NjcyXkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_UX100_CR0,0,100,100_AL_.jpg'),
    (19, 'Drama', 'Bohemian Rhapsody', 2018, 'Bohemian Rhapsody is a foot-stomping celebration of Queen, their music and their extraordinary lead singer Freddie Mercury. Freddie defied stereotypes and shattered convention to become one of the most beloved entertainers on the planet. The film traces the meteoric rise of the band through their iconic songs and revolutionary sound. They reach unparalleled success, but in an unexpected turn Freddie, surrounded by darker influences, shuns Queen in pursuit of his solo career. Having suffered greatly without the collaboration of Queen, Freddie manages to reunite with his bandmates just in time for Live Aid. While bravely facing a recent AIDS diagnosis, Freddie leads the band in one of the greatest performances in the history of rock music. Queen cements a legacy that continues to inspire outsiders, dreamers and music lovers to this day', 'https://m.media-amazon.com/images/M/MV5BMDk3NjZkMjAtNmUzMi00YzMzLWFhMzEtZTUwYWViZjE1MDZmXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_UX100_CR0,0,100,100_AL_jpg'),
    (20, 'Drama', 'Joker', 2019, 'A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother- Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society he heads downwards on a spiral, in turn showing how his alter ego "Joker", came to be.', 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX100_CR0,0,100,100_AL_.jpg');

