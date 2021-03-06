create table Lines (
       Roomid int not null,
       Linenr int not null,
       Line text not null,
       primary key (Roomid,Linenr),
       foreign key (Roomid) references Cave (Roomid)
       );

insert into Lines values (1,1,"You are standing at the end of a road before a small brick building.");
insert into Lines values (1,2,"Around you is a forest.  A small stream flows out of the building and");
insert into Lines values (1,3,"down a gully.");
insert into Lines values (2,1,"You have walked up a hill, still in the forest.  The road slopes back");
insert into Lines values (2,2,"down the other side of the hill.  There is a building in the distance.");
insert into Lines values (3,1,"You are inside a building, a well house for a large spring.");
insert into Lines values (4,1,"You are in a valley in the forest beside a stream tumbling along a");
insert into Lines values (4,2,"rocky bed.");
insert into Lines values (5,1,"You are in open forest, with a deep valley to one side.");
insert into Lines values (6,1,"You are in open forest near both a valley and a road.");
insert into Lines values (7,1,"At your feet all the water of the stream splashes into a 2-inch slit");
insert into Lines values (7,2,"in the rock.  Downstream the streambed is bare rock.");
insert into Lines values (8,1,"You are in a 20-foot depression floored with bare dirt.  Set into the");
insert into Lines values (8,2,"dirt is a strong steel grate mounted in concrete.  The grate is open");
insert into Lines values (8,3,"and you could probably just squeeze through if you tried. A dry");
insert into Lines values (8,4,"streambed leads into the depression.");
insert into Lines values (9,1,"You are in a small chamber beneath a 3x3 steel grate to the surface.");
insert into Lines values (9,2,"A low crawl over cobbles leads inward to the west.");
insert into Lines values (10,1,"You are crawling over cobbles in a low passage.  There is a dim light");
insert into Lines values (10,2,"at the east end of the passage.");
insert into Lines values (11,1,"You are in a debris room filled with stuff washed in from the surface.");
insert into Lines values (11,2,"A low wide passage with cobbles becomes plugged with mud and debris");
insert into Lines values (11,3,"here, but an awkward canyon leads upward and west.  A note on the wall");
insert into Lines values (11,4,"says 'Magic word XYZZY'.");
insert into Lines values (12,1,"You are in an awkward sloping east/west canyon.");
insert into Lines values (13,1,"You are in a splendid chamber thirty feet high.  The walls are frozen");
insert into Lines values (13,2,"rivers of orange stone.  An awkward canyon and a good passage exit");
insert into Lines values (13,3,"from east and west sides of the chamber.");
insert into Lines values (14,1,"At your feet is a small pit breathing traces of white mist.  An east");
insert into Lines values (14,2,"passage ends here except for a small crack leading on.");
insert into Lines values (15,1,"You are at one end of a vast hall stretching forward out of sight to");
insert into Lines values (15,2,"the west.  There are openings to either side.  Nearby, a wide stone");
insert into Lines values (15,3,"staircase leads downward.  The hall is filled with wisps of white mist");
insert into Lines values (15,4,"swaying to and fro almost as if alive.  A cold wind blows up the");
insert into Lines values (15,5,"staircase.  There is a passage at the top of a dome behind you.");
insert into Lines values (17,1,"You are on the east bank of a fissure slicing clear across the hall.");
insert into Lines values (17,2,"The mist is quite thick here, and the fissure is too wide to jump.");
insert into Lines values (18,1,"This is a low room with a crude note on the wall.  The note says,");
insert into Lines values (18,2,"'It will be hard to get it up the steps'.");
insert into Lines values (19,1,"You are in the Hall of the Mountain King, with passages off in all");
insert into Lines values (19,2,"directions.");
insert into Lines values (27,1,"You are on the west side of the fissure in the Hall of Mists.");
insert into Lines values (28,1,"You are in a low N/S passage at a hole in the floor.  The hole goes");
insert into Lines values (28,2,"down to an E/W passage.");
insert into Lines values (29,1,"You are in the south side chamber.");
insert into Lines values (30,1,"You are in the west side chamber of the Hall of the Mountain King.");
insert into Lines values (30,2,"A passage continues west and up here.");
insert into Lines values (33,1,"You are in a large room, with a passage to the south, a passage to the");
insert into Lines values (33,2,"west, and a wall of broken rock to the east.  There is a large 'Y2' on");
insert into Lines values (33,3,"a rock in the room's center.");
insert into Lines values (34,1,"You are in a jumble of rock, with cracks everywhere.");
insert into Lines values (35,1,"You're at a low window overlooking a huge pit, which extends up out of");
insert into Lines values (35,2,"sight.  A floor is indistinctly visible over 50 feet below.  Traces of");
insert into Lines values (35,3,"white mist cover the floor of the pit, becoming thicker to the right.");
insert into Lines values (35,4,"Marks in the dust around the window would seem to indicate that");
insert into Lines values (35,5,"someone has been here recently.  Directly across the pit from you and");
insert into Lines values (35,6,"25 feet away there is a similar window looking into a lighted room.  A");
insert into Lines values (35,7,"shadowy figure can be seen there peering back at you.");
insert into Lines values (36,1,"You are in a dirty broken passage.  To the east is a crawl.  To the");
insert into Lines values (36,2,"west is a large passage.  Above you is a hole to another passage.");
insert into Lines values (37,1,"You are on the brink of a small clean climbable pit.  A crawl leads");
insert into Lines values (37,2,"west.");
insert into Lines values (38,1,"You are in the bottom of a small pit with a little stream, which");
insert into Lines values (38,2,"enters and exits through tiny slits.");
insert into Lines values (39,1,"You are in a large room full of dusty rocks.  There is a big hole in");
insert into Lines values (39,2,"the floor.  There are cracks everywhere, and a passage leading east.");
insert into Lines values (41,1,"You are at the west end of Hall of Mists.  A low wide crawl continues");
insert into Lines values (41,2,"west and another goes north.  To the south is a little passage 6 feet");
insert into Lines values (41,3,"off the floor.");
insert into Lines values (60,1,"You are at the east end of a very long hall apparently without side");
insert into Lines values (60,2,"chambers.  To the east a low wide crawl slants up.  To the north a");
insert into Lines values (60,3,"round two foot hole slants down.");
insert into Lines values (61,1,"You are at the west end of a very long featureless hall.  The hall");
insert into Lines values (61,2,"joins up with a narrow north/south passage.");
insert into Lines values (62,1,"You are at a crossover of a high N/S passage and a low E/W one.");
insert into Lines values (63,1,"Dead end");
insert into Lines values (69,1,"You are in a secret N/S canyon above a large room.");
insert into Lines values (74,1,"You are in a secret canyon which here runs e/w.  It crosses over a");
insert into Lines values (74,2,"very tight canyon 15 feet below.  If you go down you may not be able");
insert into Lines values (74,3,"to get back up.");
insert into Lines values (75,1,"You are at a wide place in a very tight N/S canyon.");
insert into Lines values (77,1,"You are in a tall E/W canyon.  A low tight crawl goes 3 feet north and");
insert into Lines values (77,2,"seems to open up.");
insert into Lines values (78,1,"The canyon runs into a mass of boulders -- dead end.");
insert into Lines values (109,1,"You are in a north/south canyon about 25 feet across.  The floor is");
insert into Lines values (109,2,"covered by white mist seeping in from the north.  The walls extend");
insert into Lines values (109,3,"upward for well over 100 feet.  Suspended from some unseen point far");
insert into Lines values (109,4,"above you, an enormous two-sided mirror is hanging parallel to and");
insert into Lines values (109,5,"midway between the canyon walls.  (The mirror is obviously provided");
insert into Lines values (109,6,"for the use of the dwarves, who as you know, are extremely vain.)  A");
insert into Lines values (109,7,"small window can be seen in either wall, some fifty feet up.");
insert into Lines values (113,1,"You are at the edge of a large underground reservoir.  An opaque cloud");
insert into Lines values (113,2,"of white mist fills the room and rises rapidly upward.  The lake is");
insert into Lines values (113,3,"fed by a stream, which tumbles out of a hole in the wall about 10 feet");
insert into Lines values (113,4,"overhead and splashes noisily into the water somewhere within the");
insert into Lines values (113,5,"mist.");
insert into Lines values (120,1,"You are in a secret canyon which exits to the north and east.");
insert into Lines values (200,1,"You are in a maze of twisting little passages, all different.");
insert into Lines values (201,1,"You are in a little maze of twisty passages, all different.");
insert into Lines values (202,1,"You are in a twisting maze of little passages, all different.");
insert into Lines values (203,1,"You are in a twisting little maze of passages, all different.");
insert into Lines values (204,1,"You are in a twisty little maze of passages, all different.");
insert into Lines values (205,1,"You are in a twisty maze of little passages, all different.");
insert into Lines values (206,1,"You are in a little twisty maze of passages, all different.");
insert into Lines values (207,1,"You are in a maze of twisting little passages, all different.");
insert into Lines values (208,1,"You are in a little maze of twisty passages, all different.");
insert into Lines values (209,1,"You are in a twisting maze of little passages, all different.");
insert into Lines values (210,1,"You are in a twisting little maze of passages, all different.");
insert into Lines values (211,1,"You are in a twisty little maze of passages, all different.");
insert into Lines values (212,1,"You are in a twisty maze of little passages, all different.");
insert into Lines values (213,1,"You are in a little twisty maze of passages, all different.");
insert into Lines values (214,1,"You are in a little twisty maze of passages, all different.");
insert into Lines values (245,1,"You are on the brink of a thirty foot pit with a massive orange column");
insert into Lines values (245,2,"down one wall.  You could climb down here but you could not get back");
insert into Lines values (245,3,"up.  The maze continues at this level.");
insert into Lines values (250,1,"You are in an immense room. On a shelf of rock high above");
insert into Lines values (250,2,"you there are marvelous treasures. Unfortunately, the wall is");
insert into Lines values (250,3,"smooth and too slippery to climb. Before the wall there is a rather");
insert into Lines values (250,4,"large wooden chest. It is locked with four huge and rusty locks.");
