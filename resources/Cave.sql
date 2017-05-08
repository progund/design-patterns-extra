create table Cave (
       Roomid int not null primary key,
       North int,
       South int,
       East int,
       West int
       );

insert into Cave values (1,5,4,3,2);
insert into Cave values (2,0,5,1,0);
insert into Cave values (3,6,6,6,1);
insert into Cave values (4,1,7,5,5);
insert into Cave values (5,6,5,4,5);
insert into Cave values (6,1,4,4,4);
insert into Cave values (7,4,8,3,5);
insert into Cave values (8,7,9,6,5);
insert into Cave values (9,8,0,0,10);
insert into Cave values (10,0,0,9,11);
insert into Cave values (11,9,0,10,12);
insert into Cave values (12,9,0,11,13);
insert into Cave values (13,9,0,12,14);
insert into Cave values (14,9,15,13,0);
insert into Cave values (15,14,19,18,17);
insert into Cave values (17,0,0,15,27);
insert into Cave values (18,15,19,0,28);

insert into Cave values (19,15,-2,74,30); /* south: -2 A snake bars the way. south --> 29, if cage & bird dropped */

insert into Cave values (27,0,19,17,41);
insert into Cave values (28,33,36,18,0);
insert into Cave values (29,19,0,0,0);
insert into Cave values (30,0,0,19,62);
insert into Cave values (33,39,28,34,35);

insert into Cave values (34,-1,33,0,33);  /* north: -1 You slipped, bounced down the cliff into the water and drowned. */

insert into Cave values (35,0,0,33,0);
insert into Cave values (36,28,0,37,39);
insert into Cave values (37,0,38,0,36);
insert into Cave values (38,37,0,0,0);
insert into Cave values (39,34,33,36,0);
insert into Cave values (41,0,201,27,60);
insert into Cave values (60,62,0,41,0);
insert into Cave values (61,62,210,60,0);
insert into Cave values (62,63,61,30,60);
insert into Cave values (63,0,62,0,0);
insert into Cave values (69,109,120,0,0);
insert into Cave values (74,109,75,19,120);
insert into Cave values (75,74,0,77,0);
insert into Cave values (77,35,75,0,78);
insert into Cave values (78,0,77,0,0);
insert into Cave values (109,113,69,0,0);

insert into Cave values (113,0,109,0,-1); /* west: -1 You fell through a crack and plummeted 100 ft to your death.*/

insert into Cave values (120,69,0,74,-3); /* printf(1) : A dragon appears. You’re about to be fried.
                                           * printf(2) : You better leave before you’re shiskabab!
                                           * if diamonds, gold, silver, and jewels dropped the dragon disappears,
                                           * the direction is becomes unpassable (i.e. west-> 0 for the rest of the game
                                           * and glass key becomes visible and attainable (visible = 1 & attainable = 1). */

insert into Cave values (200,201,200,201,200);
insert into Cave values (201,41,204,202,200);
insert into Cave values (202,204,205,212,201);
insert into Cave values (203,0,0,204,13);
insert into Cave values (204,201,212,202,203);
insert into Cave values (205,0,207,202,0);
insert into Cave values (206,0,0,207,210);
insert into Cave values (207,212,211,205,206);
insert into Cave values (208,208,208,245,211);
insert into Cave values (209,211,0,0,0);
insert into Cave values (210,0,209,0,206);
insert into Cave values (211,208,0,211,207);
insert into Cave values (212,202,200,0,204);
insert into Cave values (213,250,213,13,0);
insert into Cave values (214,0,0,213,0);
insert into Cave values (245,214,0,13,208);
insert into Cave values (250,0,213,0,0);
