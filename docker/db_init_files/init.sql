CREATE TABLE IF NOT EXISTS `shows` (
  `show_id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `title` varchar(100) NOT NULL,
  `release_year` int(10) NOT NULL,
  `listed_in` text NULL,
  `description` text NOT NULL
);

SET NAMES utf8;

INSERT INTO `shows` ( `show_id`, `type`, `title`, `release_year`, `listed_in`, `description`) VALUES
(1, 'Movie', 'Norm of the North: King Sized Adventure', 2019, 'Children & Family Movies, Comedies', 'Before planning an awesome wedding for his grandfather, a polar bear king must take back a stolen artifact from an evil archaeologist first.'),
(2, 'Movie', 'Jandino: Whatever it Takes', 2016, 'Stand-Up Comedy', 'Jandino Asporaat riffs on the challenges of raising kids and serenades the audience with a rousing rendition of "Sex on Fire" in his comedy show.'),
(3, 'TV Show', 'Transformers Prime', 2013, 'Kids'' TV', 'With the help of three human allies, the Autobots once again protect Earth from the onslaught of the Decepticons and their leader, Megatron.'),
(4, 'TV Show', 'Transformers: Robots in Disguise', 2016, 'Kids'' TV', 'When a prison ship crash unleashes hundreds of Decepticons on Earth, Bumblebee leads a new Autobot force to protect humankind.'),
(5, 'Movie', '#realityhigh', 2017, 'Comedies', 'When nerdy high schooler Dani finally attracts the interest of her longtime crush, she lands in the cross hairs of his ex, a social media celebrity.'),
(6, 'TV Show', 'Apaches', 2016, 'Crime TV Shows, International TV Shows, Spanish-Language TV Shows', 'A young journalist is forced into a life of crime to save his father and family in this series based on the novel by Miguel Sáez Carral.'),
(7, 'Movie', 'Automata', 2014, 'International Movies, Sci-Fi & Fantasy, Thrillers', 'In a dystopian future, an insurance adjuster for a tech company investigates a robot killed for violating protocol and discovers a global conspiracy.'),
(8, 'Movie', 'Fabrizio Copano: Solo pienso en mi', 2017, 'Stand-Up Comedy', 'Fabrizio Copano takes audience participation to the next level in this stand-up set while reflecting on sperm banks, family WhatsApp groups and more.'),
(9, 'TV Show', 'Fire Chasers', 2017, 'Docuseries, Science & Nature TV', 'As California''s 2016 fire season rages, brave backcountry firefighters race to put out the flames, protect homes and save lives in this docuseries.'),
(10, 'Movie', 'Good People', 2014, 'Action & Adventure, Thrillers', 'A struggling couple can''t believe their luck when they find a stash of money in the apartment of a neighbor who was recently murdered.'),
(11, 'Movie', 'Joaquín Reyes: Una y no más', 2017, 'Stand-Up Comedy', 'Comedian and celebrity impersonator Joaquín Reyes decides to be his zesty self for a night of stories about buses, bathroom habits, royalty and more.'),
(12, 'Movie', 'Kidnapping Mr. Heineken', 2015, 'Action & Adventure, Dramas, International Movies', 'When beer magnate Alfred "Freddy" Heineken is kidnapped in 1983, his abductors make the largest ransom demand in history.'),
(13, 'Movie', 'Krish Trish and Baltiboy', 2009, 'Children & Family Movies', 'A team of minstrels, including a monkey, cat and donkey, narrate folktales from the Indian regions of Rajasthan, Kerala and Punjab.'),
(14, 'Movie', 'Krish Trish and Baltiboy: Battle of Wits', 2013, 'Children & Family Movies', 'An artisan is cheated of his payment, a lion of his throne and a brother of his inheritance in these three stories of deception and justice.'),
(15, 'Movie', 'Krish Trish and Baltiboy: Best Friends Forever', 2016, 'Children & Family Movies', 'A cat, monkey and donkey team up to narrate folktales about friendship from Northeast India, and the Indian regions of Bihar and Rajasthan.'),
(16, 'Movie', 'Krish Trish and Baltiboy: Comics of India', 2012, 'Children & Family Movies', 'In three comic-strip-style tales, a boy tries to sell wisdom, a demon is released from captivity, and a king assigns impossible tasks to his minister.'),
(17, 'Movie', 'Krish Trish and Baltiboy: Oversmartness Never Pays', 2017, 'Children & Family Movies', 'A cat, monkey and donkey learn the consequences of cheating through stories from the Indian regions of Rajasthan, West Bengal and Maharashtra.'),
(18, 'Movie', 'Krish Trish and Baltiboy: Part II', 2010, 'Children & Family Movies', 'Animal minstrels narrate stories about a monkey''s friendship with a crocodile, two monkeys'' foolishness and a villager''s encounter with a demon.'),
(19, 'Movie', 'Krish Trish and Baltiboy: The Greatest Trick', 2013, 'Children & Family Movies', 'The consequences of trickery are explored in stories involving an inconsiderate husband, two greedy courtiers, and a kind man who loses everything.'),
(20, 'Movie', 'Love', 2015, 'Cult Movies, Dramas, Independent Movies', 'A man in an unsatisfying marriage recalls the details of an intense past relationship with an ex-girlfriend when he gets word that she may be missing.'),
(21, 'Movie', 'Manhattan Romance', 2014, 'Comedies, Independent Movies, Romantic Movies', 'A filmmaker working on a documentary about love in modern Manhattan becomes personally entangled in the romantic lives of his subjects.'),
(22, 'Movie', 'Moonwalkers', 2015, 'Action & Adventure, Comedies, International Movies', 'A brain-addled war vet, a failing band manager and a Stanley Kubrick impersonator help the CIA construct an epic scam by faking the 1969 moon landing.'),
(23, 'Movie', 'Rolling Papers', 2015, 'Documentaries', 'As the newspaper industry takes a hit, The Denver Post breaks new ground with a section dedicated to cannabis culture.'),
(24, 'Movie', 'Stonehearst Asylum', 2014, 'Horror Movies, Thrillers', 'In 1899, a young doctor arrives at an asylum for an apprenticeship and becomes suspicious of his mentor''s methods while falling for a female patient.'),
(25, 'Movie', 'The Runner', 2015, 'Dramas, Independent Movies', 'A New Orleans politician finds his idealistic plans for rebuilding after a toxic oil spill unraveling thanks to a sex scandal.'),
(26, 'Movie', '6 Years', 2015, 'Dramas, Independent Movies, Romantic Movies', 'As a volatile young couple who have been together for six years approach college graduation, unexpected career opportunities threaten their future.'),
(27, 'TV Show', 'Castle of Stars', 2015, 'International TV Shows, Romantic TV Shows, TV Comedies', 'As four couples with different lifestyles go through the ebbs and flows of joy and sorrow, each must learn how to live a good life.'),
(28, 'Movie', 'City of Joy', 2018, 'Documentaries', 'Women who''ve been sexually brutalized in war-torn Congo begin to heal at City of Joy, a center that helps them regain a sense of self and empowerment.'),
(29, 'TV Show', 'First and Last', 2018, 'Docuseries', 'Take an intimate look at the emotionally charged first and last days of new and soon-to-be released inmates at Georgia''s Gwinnett County Jail.'),
(30, 'Movie', 'Laddaland', 2011, 'Horror Movies, International Movies', 'When a family moves into an upscale housing development, they encounter a series of paranormal events that drive them to the edge of insanity.'),
(31, 'Movie', 'Next Gen', 2018, 'Children & Family Movies, Comedies, Sci-Fi & Fantasy', 'When lonely Mai forms an unlikely bond with a top-secret robot, they embark on an intense, action-packed adventure to foil the plot of a vicious villain.'),
(32, 'Movie', 'Sierra Burgess Is A Loser', 2018, 'Comedies, Romantic Movies', 'A wrong-number text sparks a virtual romance between a smart but unpopular teen and a sweet jock who thinks he''s talking to a gorgeous cheerleader.'),
(33, 'Movie', 'The Most Assassinated Woman in the World', 2018, 'Dramas, International Movies, Thrillers', 'In 1930s Paris, an actress famous for her gory death scenes at the Grand Guignol Theater contends with a mysterious stalker and ghosts from her past.'),
(34, 'Movie', 'Cézanne et moi', 2016, 'Dramas, Independent Movies, International Movies', 'This historical drama explores the long and often volatile friendship of painter Paul Cézanne and writer Émile Zola, who first met as schoolboys.'),
(35, 'TV Show', 'Archibald''s Next Big Thing', 2019, 'Kids'' TV, TV Comedies', 'Happy-go-lucky chicken Archibald may not remember to do his chores, but he never forgets to have fun. After all, life''s an adventure!'),
(36, 'Movie', 'Article 15', 2019, 'Dramas, International Movies, Thrillers', 'The grim realities of caste discrimination come to light as an entitled but upright city cop ventures into India’s heartland to investigate a murder.'),
(37, 'Movie', 'Care of Kancharapalem', 2018, 'Comedies, Dramas, Independent Movies', 'From a schoolboy''s crush to a middle-aged bachelor''s office romance, four love stories spanning age, religion and status unfold in a small Indian town.'),
(38, 'Movie', 'Ee Nagaraniki Emaindi', 2018, 'Comedies, International Movies', 'In Goa and in desperate need of cash, four childhood friends get another shot at making their long-abandoned dreams of becoming filmmakers come true.'),
(39, 'Movie', 'Kill Me If You Dare', 2019, 'Comedies, International Movies, Romantic Movies', 'Bogged down with money problems, a couple grows cautious of each other but hit the lottery and decide to stay together - till death do they part.'),
(40, 'TV Show', 'The Spy', 2019, 'International TV Shows, TV Dramas, TV Thrillers', 'In the 1960s, Israeli clerk-turned-secret agent Eli Cohen goes deep undercover inside Syria on a perilous, years-long mission to spy for Mossad.'),
(41, 'Movie', 'Hell and Back', 2015, 'Action & Adventure, Comedies, Independent Movies', 'When best friends break a blood oath, one of them is cast away to hell, and the other two must save him from the misfits of the underworld.'),
(42, 'Movie', 'PK', 2014, 'Comedies, Dramas, International Movies', 'Aamir Khan teams with director Rajkumar Hirani to play a social crusader in a political satire on the state of corruption in India.'),
(43, 'Movie', 'Hard Tide', 2015, 'Dramas, Independent Movies', 'A drug dealer who''s been emulating his father''s successful criminal career is forced to go on the run with a young girl in this fact-based thriller.'),
(44, 'Movie', 'Elstree 1976', 2015, 'Documentaries', 'Then and now footage of bit players who appeared in "Star Wars" tells the story of how the film and its legions of fans changed their lives forever.'),
(45, 'Movie', 'American Factory: A Conversation with the Obamas', 2019, 'Documentaries', 'Barack and Michelle Obama talk with directors Steven Bognar and Julia Reichert about the documentary and the importance of storytelling.'),
(46, 'Movie', 'ATM', 2012, 'Comedies, International Movies, Romantic Movies', 'When a broken ATM dishes out a fortune, a couple who works at the bank vies to see who can recover the most cash - and the loser must find a new job.'),
(47, 'Movie', 'Bangkok Traffic (Love) Story', 2009, 'Comedies, International Movies, Romantic Movies', 'After an encounter with an engineer working the night shift for the city train, a 30-year-old woman struggles against all odds to pursue true love.'),
(48, 'Movie', 'I Fine... Thank You... Love You', 2014, 'Comedies, International Movies, Romantic Movies', 'Desperate to go to the U.S. to win back his girlfriend, Yim hires a tutor to teach him English. But things don''t go according to plan.'),
(49, 'Movie', 'One Day', 2016, 'Dramas, International Movies, Romantic Movies', 'When his colleague (and crush) temporarily loses her memory, an overlooked geek seizes the chance to make an impression before she remembers again.'),
(50, 'Movie', 'Phobia 2', 2009, 'Horror Movies, International Movies', 'From disfiguring punishments to festering souls, Thai horror masters present five supernatural tales of karma in this sequel to the 4bia anthology.'),
(51, 'Movie', 'Shutter', 2004, 'Horror Movies, International Movies', 'After killing a young girl in a hit-and-run accident, a couple is haunted by more than just the memory of their deadly choice.'),
(52, 'Movie', 'Suckseed', 2011, 'Comedies, International Movies', 'When his boyhood crush Ern returns, Ped forms a band with his friend to impress her. Romantic rivalries bloom after the talented Ern joins the group.'),
(53, 'Movie', 'Carrie Pilby', 2016, 'Comedies, Dramas', 'A socially awkward 19-year-old genius makes big plans to step out of her shell and make a friend, get a job and - maybe - even go on a date.'),
(54, 'Movie', 'Marc Maron: Too Real', 2017, 'Stand-Up Comedy', 'Battle-scarred stand-up comedian Marc Maron unleashes a storm of ideas about meditation, mortality, documentary films and our weird modern world.'),
(55, 'TV Show', 'No Tomorrow', 2016, 'Romantic TV Shows, TV Comedies, TV Dramas', 'Her straitjacketed life turned topsy-turvy by hunky Xavier, Evie discovers a new freedom - even though her man just might be an end-of-days crackpot.'),
(56, 'Movie', 'Saawan', 2016, 'Dramas, Independent Movies, International Movies', 'Outcast from society and left to die in the wilderness, a young boy with polio embarks on a journey to connect with his mother. Based on a true story.'),
(57, 'Movie', 'The Heretics', 2017, 'Horror Movies', 'A withdrawn young woman hunted by a malicious cult is abducted by a brooding stranger and undergoes a bizarre transformation.'),
(58, 'Movie', 'The World We Make', 2019, 'Dramas, Romantic Movies', 'A teenage equestrian and a local football player for each other, but simmering racism in their small town puts their relationship to the test.'),
(59, 'Movie', 'Watchman', 2019, 'Comedies, Dramas, International Movies', 'Rushing to pay off a loan shark, a young man breaks into a bungalow to steal the cash, unprepared for the dog standing guard - or the trouble inside.'),
(60, 'Movie', 'Black Panther', 2018, 'Action & Adventure, Sci-Fi & Fantasy', 'T''Challa, the superpowered new leader of the hidden, highly advanced African nation of Wakanda, strives to protect his home from enemies old and new.'),
(61, 'Movie', 'Man Up', 2015, 'Comedies, International Movies, Romantic Movies', 'A single woman seizes an opportunity when, while standing under a train station clock, she meets a stranger who mistakes her for his blind date.'),
(62, 'TV Show', 'Frequency', 2016, 'Crime TV Shows, TV Dramas, TV Mysteries', 'A detective seizes a precious opportunity to change the past when she finds she can communicate with her deceased, estranged father via a time warp.'),
(63, 'Movie', 'Mo Gilligan: Momentum', 2019, 'Stand-Up Comedy', 'Comedian Mo Gilligan blends smooth moves and sharp humor as he riffs on humble beginnings, family dynamics and the complex art of dancing in the club.'),
(64, 'TV Show', 'Adam Ruins Everything', 2018, 'TV Comedies', 'Education can be fun - and funny. Comedian Adam Conover bursts misconceptions, deconstructs topics and leaves with positive takeaways.'),
(65, 'TV Show', 'Ben 10', 2016, 'Kids'' TV', 'Ben can transform into ten types of aliens. He''ll try ''em all while adventuring across the country with his cousin Gwen and Grandpa Max.'),
(66, 'Movie', 'Big Miracle', 2012, 'Children & Family Movies, Dramas', 'After a reporter writes about whales trapped in the Arctic Circle, the U.S. and U.S.S.R. team up to rescue them in this tale inspired by true events.'),
(67, 'TV Show', 'Christiane Amanpour: Sex & Love Around the World', 2018, 'Docuseries', 'A contextual, acculturated dive into how adults in six, big global cities celebrate love and accentuate sex. CNN''s Christiane Amanpour reports.'),
(68, 'TV Show', 'The Eighties', 2016, 'Docuseries', 'This nostalgic documentary series relives the 1980s from a variety of angles, exploring its impact on the politics, technology and culture of today.'),
(69, 'TV Show', 'The Nineties', 2017, 'Docuseries', 'This U.S.-focused series dives into the cultural and political changes that swept the last decade of the 20th century. Executive produced by Tom Hanks.'),
(70, 'TV Show', 'The Seventies', 2015, 'Docuseries', 'This series examines 1970s America, focusing on the major political and historical landmarks of the decade and the cultural response to those events.'),
(71, 'TV Show', 'We Bare Bears', 2017, 'Kids'' TV, TV Comedies', 'Grizzly, Panda and Ice Bear are three adopted bear brothers struggling against their animal instincts to fit into the civilized, modern human world.'),
(72, 'Movie', 'The Mayor', 2017, 'Dramas, International Movies', 'With the presidency in mind, the incumbent mayor of Seoul runs for an unprecedented third term - and will stop at nothing to keep his secrets hidden.'),
(73, 'TV Show', 'The Royal House of Windsor', 2017, 'British TV Shows, Docuseries, International TV Shows', 'Drawing on newly available info, this show traces how the British royal family has survived the last 100 years of power struggles, politics and more.'),
(74, 'Movie', 'Amanda Knox', 2016, 'Documentaries', 'She was twice convicted and acquitted of murder. Amanda Knox and the people closest to her case speak out in this illuminating documentary.'),
(75, 'TV Show', 'Lovesick', 2014, 'International TV Shows, Romantic TV Shows, TV Dramas', 'Love and academics get complicated at an all-male college that happens to be located next to an all-female high school.'),
(76, 'Movie', 'The Debt Collector', 2018, 'Action & Adventure', 'A broke martial arts instructor takes a side gig with a mobster, who pairs him with a veteran thug for a weekend of fisticuffs-fueled debt collection.'),
(77, 'Movie', 'Act of Vengeance', 2010, 'Action & Adventure, International Movies', 'Two Turkish agents are sent to New York City on a mission to capture a notorious terrorist known only as "Dejjal" (Arabic for Antichrist).'),
(78, 'Movie', 'Paradise Lost', 2018, 'Dramas, Independent Movies, International Movies', 'A cop moonlights as the bodyguard for a young drag queen at a nightclub, and grows closer to the family of misfit singers that perform there.'),
(79, 'Movie', 'Gerald''s Game', 2017, 'Horror Movies, Thrillers', 'When her husband''s sex game goes wrong, Jessie - handcuffed to a bed in a remote lake house - faces warped visions, dark secrets and a dire choice.'),
(80, 'Movie', 'Long Shot', 2017, 'Documentaries', 'When Juan Catalan is arrested for a murder he didn''t commit, he builds his case for innocence around raw footage from a popular TV show. A documentary.'),
(81, 'TV Show', 'Mak Cun', 2015, 'International TV Shows, TV Comedies, TV Dramas', 'A woman with an entrepreneurial spirit takes life into her own hands by starting a beauty cream business that inspires other women to take chances.'),
(82, 'Movie', 'Our Souls at Night', 2017, 'Dramas, Romantic Movies', 'After widowed neighbors Addie and Louis begin sleeping in bed together platonically to alleviate their loneliness, a real romance begins to blossom.'),
(83, 'Movie', 'Out of Thin Air', 2017, 'Documentaries, International Movies', 'Picking up 40 years after six were convicted for two strange murders in Iceland, this chilling documentary proves confessions can’t always be trusted.'),
(84, 'TV Show', 'Paul Hollywood''s Big Continental Road Trip', 2017, 'British TV Shows, Docuseries, International TV Shows', 'Gear up for a fast-paced journey as celebrity chef and avid auto enthusiast Paul Hollywood takes in the cars and culture of France, Italy and Germany.'),
(85, 'TV Show', 'Satu Hari', 2014, 'International TV Shows, TV Dramas', 'A man haunted by his wife''s affair moves to Sarajevo and starts to love again, until fate forces him to choose between his new life and old loyalty.'),
(86, 'Movie', 'Monster High: Boo York, Boo York', 2015, 'Children & Family Movies, Music & Musicals', 'Cleo is invited to a gala in the big city celebrating a magical comet and brings her best friends along. But the sinister Nefera has other plans.'),
(88, 'Movie', 'Cultivating the Seas: History and Future of the Full-Cycle Cultured Kindai Tuna', 2019, 'Documentaries, International Movies', 'An in-depth look at the full-cycle breeding program for bluefin Kindai tuna pioneered by Kinki University''s Aqua Culture Research Institute.'),
(89, 'Movie', 'Domino', 2019, 'International Movies, Thrillers', 'A Copenhagen police officer hunts for the man who attacked his partner, only to stumble into a high-stakes game of espionage.'),
(90, 'Movie', 'TUNA GIRL', 2019, 'Dramas, International Movies', 'A clumsy but cheerful fisheries student struggles to find her place at a research institute renowned for its tuna cultivation. The work isn''t easy.'),
(100, 'Movie', '5CM', 2012, 'Dramas, International Movies', 'Five friends embark on a mission to climb the highest peak in Java, overcoming obstacles on the way and discovering the true meaning of friendship.'),
(111, 'Movie', 'Animal World', 2018, 'Action & Adventure, International Movies, Sci-Fi & Fantasy', 'An unlucky, debt-ridden teen resorts to his math skills when he''s forced into a deadly tournament of rock-paper-scissors run by a diabolical host.'),
(123, 'Movie', 'Hold the Dark', 2018, 'Action & Adventure, Dramas', 'In the grim Alaskan winter, a naturalist hunts for wolves blamed for killing a local boy, but he soon finds himself swept into a chilling mystery.'),
(145, 'Movie', 'Lessons from a School Shooting: Notes from Dunblane', 2018, 'Documentaries', 'Two priests - one from Dunblane, Scotland, the other from Newtown, Connecticut - bond over school tragedies that occurred 16 years apart.'),
(190, 'TV Show', 'Made in Mexico', 2018, 'International TV Shows, Reality TV, Spanish-Language TV Shows', 'These Mexico City socialites may lead opulent lives, but a peek behind the curtain reveals a tangled web of intrigue, envy and personal struggles.'),
(201, 'Movie', 'Single', 2015, 'Comedies, International Movies, Romantic Movies', 'Unemployed and immature, a somewhat pathetic bachelor sets his sights on finding a date for the wedding of his younger, more successful brother.'),
(202, 'Movie', 'The 3rd Eye', 2018, 'Horror Movies, International Movies', 'When her little sister claims she sees the dead, Alia consults a psychic, who opens her own eyes to the vengeful ghosts haunting their childhood home.'),
(203, 'Movie', 'The Sinking Of Van Der Wijck', 2013, 'Dramas, International Movies, Romantic Movies', 'When a young man leaves home to fulfill the wishes of his late father, he meets and falls in love with a woman from a very different background.'),
(204, 'Movie', 'Two Catalonias', 2018, 'Documentaries, International Movies', 'Lawmakers and activists with conflicting ideologies speak about the complexities of Catalonia''s politics and the fight for its independence from Spain.');

