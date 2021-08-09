const tmdbSimilarMoviesMock = """
{
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/iEVZScwA2vy8BlVOFBBCfbU6XxB.jpg",
      "genre_ids": [
        28,
        12,
        35,
        878
      ],
      "id": 607,
      "title": "Men in Black",
      "original_language": "en",
      "original_title": "Men in Black",
      "overview": "After a police chase with an otherworldly being, a New York City cop is recruited as an agent in a top-secret organization established to monitor and police alien activity on Earth: the Men in Black. Agent Kay and new recruit Agent Jay find themselves in the middle of a deadly plot by an intergalactic terrorist who has arrived on Earth to assassinate two ambassadors from opposing galaxies.",
      "popularity": 33.049,
      "poster_path": "/uLOmOF5IzWoyrgIF5MfUnh5pa1X.jpg",
      "release_date": "1997-07-02",
      "video": false,
      "vote_average": 7.149,
      "vote_count": 10874
    },
    {
      "adult": false,
      "backdrop_path": "/k22mrpAzZNRR5ktD5Wb7rMlxemS.jpg",
      "genre_ids": [
        28,
        12,
        35,
        878
      ],
      "id": 608,
      "title": "Men in Black II",
      "original_language": "en",
      "original_title": "Men in Black II",
      "overview": "Kay and Jay reunite to provide our best, last and only line of defense against a sinister seductress who levels the toughest challenge yet to the MIB's untarnished mission statement – protecting Earth from the scum of the universe. It's been four years since the alien-seeking agents averted an intergalactic disaster of epic proportions. Now it's a race against the clock as Jay must convince Kay – who not only has absolutely no memory of his time spent with the MIB, but is also the only living person left with the expertise to save the galaxy – to reunite with the MIB before the earth submits to ultimate destruction.",
      "popularity": 30.317,
      "poster_path": "/enA22EPyzc2WQ1VVyY7zxresQQr.jpg",
      "release_date": "2002-07-03",
      "video": false,
      "vote_average": 6.339,
      "vote_count": 7834
    },
    {
      "adult": false,
      "backdrop_path": "/c6yfABGVKuB5cjoOwdX4AJMlzUz.jpg",
      "genre_ids": [
        35,
        14
      ],
      "id": 620,
      "title": "Ghostbusters",
      "original_language": "en",
      "original_title": "Ghostbusters",
      "overview": "After losing their academic posts at a prestigious university, a team of parapsychologists goes into business as proton-pack-toting 'ghostbusters' who exterminate ghouls, hobgoblins and supernatural pests of all stripes. An ad campaign pays off when a knockout cellist hires the squad to purge her swanky digs of demons that appear to be living in her refrigerator.",
      "popularity": 34.693,
      "poster_path": "/5YhJoPzYL9n0ilqDuVO2v89BuYY.jpg",
      "release_date": "1984-06-08",
      "video": false,
      "vote_average": 7.434,
      "vote_count": 6610
    },
    {
      "adult": false,
      "backdrop_path": "/Aw0z8bUhGljT0ots6udf1MTLEMi.jpg",
      "genre_ids": [
        18,
        80
      ],
      "id": 627,
      "title": "Trainspotting",
      "original_language": "en",
      "original_title": "Trainspotting",
      "overview": "Heroin addict Mark Renton stumbles through bad ideas and sobriety attempts with his unreliable friends -- Sick Boy, Begbie, Spud and Tommy. He also has an underage girlfriend, Diane, along for the ride. After cleaning up and moving from Edinburgh to London, Mark finds he can't escape the life he left behind when Begbie shows up at his front door on the lam, and a scheming Sick Boy follows.",
      "popularity": 21.007,
      "poster_path": "/6UTzw3kipgTYAJCX8GExoXzcVOx.jpg",
      "release_date": "1996-02-23",
      "video": false,
      "vote_average": 7.98,
      "vote_count": 7575
    },
    {
      "adult": false,
      "backdrop_path": "/6CLV2HakYO1tyAV5GUHOeNPyaTd.jpg",
      "genre_ids": [
        18,
        80,
        53
      ],
      "id": 629,
      "title": "The Usual Suspects",
      "original_language": "en",
      "original_title": "The Usual Suspects",
      "overview": "Held in an L.A. interrogation room, Verbal Kint attempts to convince the feds that a mythic crime lord, Keyser Soze, not only exists, but was also responsible for drawing him and his four partners into a multi-million dollar heist that ended with an explosion in San Pedro harbor – leaving few survivors. Verbal lures his interrogators with an incredible story of the crime lord's almost supernatural prowess.",
      "popularity": 19.472,
      "poster_path": "/bUPmtQzrRhzqYySeiMpv7GurAfm.jpg",
      "release_date": "1995-07-19",
      "video": false,
      "vote_average": 8.21,
      "vote_count": 7907
    },
    {
      "adult": false,
      "backdrop_path": "/qAvou7F5P4VcIR72JzzrnKEQSN3.jpg",
      "genre_ids": [
        12,
        14,
        10751
      ],
      "id": 630,
      "title": "The Wizard of Oz",
      "original_language": "en",
      "original_title": "The Wizard of Oz",
      "overview": "Young Dorothy finds herself in a magical world where she makes friends with a lion, a scarecrow and a tin man as they make their way along the yellow brick road to talk with the Wizard and ask for the things they miss most in their lives. The Wicked Witch of the West is the only thing that could stop them.",
      "popularity": 52.879,
      "poster_path": "/bSA6DbAC5gdkaooU164lQUX6rVs.jpg",
      "release_date": "1939-08-15",
      "video": false,
      "vote_average": 7.583,
      "vote_count": 4220
    },
    {
      "adult": false,
      "backdrop_path": "/kdrLxbTG0qCTbeAvzCUXBhPVONg.jpg",
      "genre_ids": [
        27,
        53,
        80
      ],
      "id": 663,
      "title": "Saw IV",
      "original_language": "en",
      "original_title": "Saw IV",
      "overview": "Jigsaw and his apprentice Amanda are dead. Now, upon the news of Detective Kerry's murder, two seasoned FBI profilers, Agent Strahm and Agent Perez, arrive in the terrified community to assist the veteran Detective Hoffman in sifting through Jigsaw's latest grisly remains and piecing together the puzzle. However, when SWAT Commander Rigg is abducted and thrust into a game, the last officer untouched by Jigsaw has but ninety minutes to overcome a series of demented traps and save an old friend...or face the deadly consequences.",
      "popularity": 40.872,
      "poster_path": "/wd6mhwDjlpeOufuMUF1FAeMliWZ.jpg",
      "release_date": "2007-10-25",
      "video": false,
      "vote_average": 6.155,
      "vote_count": 2678
    },
    {
      "adult": false,
      "backdrop_path": "/hKNGaQFzg4RxyMWIGGnYGW5b2Xh.jpg",
      "genre_ids": [
        18,
        53,
        9648,
        28
      ],
      "id": 670,
      "title": "Oldboy",
      "original_language": "ko",
      "original_title": "올드보이",
      "overview": "With no clue how he came to be imprisoned, drugged and tortured for 15 years, a desperate businessman seeks revenge on his captors.",
      "popularity": 18.041,
      "poster_path": "/pWDtjs568ZfOTMbURQBYuT4Qxka.jpg",
      "release_date": "2003-11-21",
      "video": false,
      "vote_average": 8.256,
      "vote_count": 5978
    },
    {
      "adult": false,
      "backdrop_path": "/suaEOtk1N1sgg2MTM7oZd2cfVp3.jpg",
      "genre_ids": [
        53,
        80
      ],
      "id": 680,
      "title": "Pulp Fiction",
      "original_language": "en",
      "original_title": "Pulp Fiction",
      "overview": "A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.",
      "popularity": 57.408,
      "poster_path": "/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg",
      "release_date": "1994-09-10",
      "video": false,
      "vote_average": 8.476,
      "vote_count": 21542
    },
    {
      "adult": false,
      "backdrop_path": "/pLR2O3dmA9xkCiPA26U7ErCUYSi.jpg",
      "genre_ids": [
        80,
        18
      ],
      "id": 524,
      "title": "Casino",
      "original_language": "en",
      "original_title": "Casino",
      "overview": "In early-1970s Las Vegas, low-level mobster Sam 'Ace' Rothstein gets tapped by his bosses to head the Tangiers Casino. At first, he's a great success in the job, but over the years, problems with his loose-cannon enforcer Nicky Santoro, his ex-hustler wife Ginger, her con-artist ex Lester Diamond and a handful of corrupt politicians put Sam in ever-increasing danger.",
      "popularity": 23.715,
      "poster_path": "/4TS5O1IP42bY2BvgMxL156EENy.jpg",
      "release_date": "1995-11-22",
      "video": false,
      "vote_average": 8.008,
      "vote_count": 4058
    },
    {
      "adult": false,
      "backdrop_path": "/muth4OYamXf41G2evdrLEg8d3om.jpg",
      "genre_ids": [
        14,
        28
      ],
      "id": 557,
      "title": "Spider-Man",
      "original_language": "en",
      "original_title": "Spider-Man",
      "overview": "After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.",
      "popularity": 95.264,
      "poster_path": "/fwoETElxZqiF3it8F4HitSliXqp.jpg",
      "release_date": "2002-05-01",
      "video": false,
      "vote_average": 7.178,
      "vote_count": 13724
    },
    {
      "adult": false,
      "backdrop_path": "/6al048Lat3eLVQOuKtc9h6Tu94d.jpg",
      "genre_ids": [
        28,
        12,
        14
      ],
      "id": 558,
      "title": "Spider-Man 2",
      "original_language": "en",
      "original_title": "Spider-Man 2",
      "overview": "Peter Parker is going through a major identity crisis. Burned out from being Spider-Man, he decides to shelve his superhero alter ego, which leaves the city suffering in the wake of carnage left by the evil Doc Ock. In the meantime, Parker still can't act on his feelings for Mary Jane Watson, a girl he's loved since childhood.",
      "popularity": 32.227,
      "poster_path": "/olxpyq9kJAZ2NU1siLshhhXEPR7.jpg",
      "release_date": "2004-06-25",
      "video": false,
      "vote_average": 7.114,
      "vote_count": 11108
    },
    {
      "adult": false,
      "backdrop_path": "/6MQmtWk4cFwSDyNvIgoJRBIHUT3.jpg",
      "genre_ids": [
        14,
        28,
        12
      ],
      "id": 559,
      "title": "Spider-Man 3",
      "original_language": "en",
      "original_title": "Spider-Man 3",
      "overview": "The seemingly invincible Spider-Man goes up against an all-new crop of villains—including the shape-shifting Sandman. While Spider-Man’s superpowers are altered by an alien organism, his alter ego, Peter Parker, deals with nemesis Eddie Brock and also gets caught up in a love triangle.",
      "popularity": 120.181,
      "poster_path": "/2jLxKF73SAPkyhIWrnv67IH7kJ1.jpg",
      "release_date": "2007-05-01",
      "video": false,
      "vote_average": 6.269,
      "vote_count": 10036
    },
    {
      "adult": false,
      "backdrop_path": "/tIG8FwHRiHLOlWJdizp2oxdkSL2.jpg",
      "genre_ids": [
        14,
        28,
        27
      ],
      "id": 561,
      "title": "Constantine",
      "original_language": "en",
      "original_title": "Constantine",
      "overview": "John Constantine has literally been to Hell and back. When he teams up with a policewoman to solve the mysterious suicide of her twin sister, their investigation takes them through the world of demons and angels that exists beneath the landscape of contemporary Los Angeles.",
      "popularity": 60.268,
      "poster_path": "/vPYgvd2MwHlxTamAOjwVQp4qs1W.jpg",
      "release_date": "2005-02-08",
      "video": false,
      "vote_average": 6.953,
      "vote_count": 5050
    },
    {
      "adult": false,
      "backdrop_path": "/29BCwmpV9HQUekAGlJLplkslRRf.jpg",
      "genre_ids": [
        27,
        9648
      ],
      "id": 588,
      "title": "Silent Hill",
      "original_language": "en",
      "original_title": "Silent Hill",
      "overview": "In search for answers, a mother travels to the enigmatic town of Silent Hill when her daughter begins to suffer recurring nightmares related to the place. It doesn't take long for her to discover its home to beings as equally haunting as the town itself.",
      "popularity": 39.9,
      "poster_path": "/bQkXL0cSlPviaQhxM090knCc5kS.jpg",
      "release_date": "2006-04-21",
      "video": false,
      "vote_average": 6.524,
      "vote_count": 3125
    },
    {
      "adult": false,
      "backdrop_path": "/6VmFqApQRyZZzmiGOQq2C92jyvH.jpg",
      "genre_ids": [
        18,
        10749
      ],
      "id": 597,
      "title": "Titanic",
      "original_language": "en",
      "original_title": "Titanic",
      "overview": "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic, 84 years later. A young Rose boards the ship with her mother and fiancé. Meanwhile, Jack Dawson and Fabrizio De Rossi win third-class tickets aboard the ship. Rose tells the whole story from Titanic's departure through to its death—on its first and last voyage—on April 15, 1912.",
      "popularity": 117.456,
      "poster_path": "/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
      "release_date": "1997-11-18",
      "video": false,
      "vote_average": 7.864,
      "vote_count": 19567
    },
    {
      "adult": false,
      "backdrop_path": "/v6MVBFnQOscITvmAy5N5ras2JKZ.jpg",
      "genre_ids": [
        878,
        28,
        12
      ],
      "id": 1924,
      "title": "Superman",
      "original_language": "en",
      "original_title": "Superman",
      "overview": "Mild-mannered Clark Kent works as a reporter at the Daily Planet alongside his crush, Lois Lane. Clark must summon his superhero alter-ego when the nefarious Lex Luthor launches a plan to take over the world.",
      "popularity": 34.429,
      "poster_path": "/d7px1FQxW4tngdACVRsCSaZq0Xl.jpg",
      "release_date": "1978-12-13",
      "video": false,
      "vote_average": 7.083,
      "vote_count": 2745
    },
    {
      "adult": false,
      "backdrop_path": "/kYd1ZMWvG9K2Jeop3XWXcTpJ2dB.jpg",
      "genre_ids": [
        28,
        878
      ],
      "id": 1927,
      "title": "Hulk",
      "original_language": "en",
      "original_title": "Hulk",
      "overview": "Bruce Banner, a genetics researcher with a tragic past, suffers massive radiation exposure in his laboratory that causes him to transform into a raging green monster when he gets angry.",
      "popularity": 34.448,
      "poster_path": "/qnngKqAcqfH2pBxDoKu5lxzSbTo.jpg",
      "release_date": "2003-06-19",
      "video": false,
      "vote_average": 5.494,
      "vote_count": 4405
    },
    {
      "adult": false,
      "backdrop_path": "/xYz4u1jWCKyXGzddMJeOL845DTr.jpg",
      "genre_ids": [
        28,
        12,
        14
      ],
      "id": 1930,
      "title": "The Amazing Spider-Man",
      "original_language": "en",
      "original_title": "The Amazing Spider-Man",
      "overview": "Peter Parker is an outcast high schooler abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben and Aunt May. Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. As Peter discovers a mysterious briefcase that belonged to his father, he begins a quest to understand his parents' disappearance – leading him directly to Oscorp and the lab of Dr. Curt Connors, his father's former partner. As Spider-Man is set on a collision course with Connors' alter ego, The Lizard, Peter will make life-altering choices to use his powers and shape his destiny to become a hero.",
      "popularity": 91.05,
      "poster_path": "/dQ8TOCYgP9pzQvSb1cmaalYqdb5.jpg",
      "release_date": "2012-06-23",
      "video": false,
      "vote_average": 6.578,
      "vote_count": 13074
    },
    {
      "adult": false,
      "backdrop_path": "/jP2htGBHE7vKq4MLeC75UeC0sZH.jpg",
      "genre_ids": [
        80,
        18,
        9648,
        53
      ],
      "id": 1949,
      "title": "Zodiac",
      "original_language": "en",
      "original_title": "Zodiac",
      "overview": "The true story of the investigation of the 'Zodiac Killer', a serial killer who terrified the San Francisco Bay Area, taunting police with his ciphers and letters. The case becomes an obsession for three men as their lives and careers are built and destroyed by the endless trail of clues.",
      "popularity": 26.476,
      "poster_path": "/6YmeO4pB7XTh8P8F960O1uA14JO.jpg",
      "release_date": "2007-03-02",
      "video": false,
      "vote_average": 7.474,
      "vote_count": 7512
    }
  ],
  "total_pages": 500,
  "total_results": 10000
}""";
