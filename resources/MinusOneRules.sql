create table MinusOneRules (
       Nr int not null primary key,
       Effect text CHECK (Effect = 'hitloss' or Effect = 'gameover'),
       Hitpoints int,
       Message text
       );

insert into MinusOneRules values (1,"gameover",0,"You fell through a crack and plummeted 100 ft to your death");
insert into MinusOneRules values (2,"gameover",0,"You slipped, bounced down the cliff into the water and drowned");
insert into MinusOneRules values (3,"hitloss",-10,"You ran into a wall");
insert into MinusOneRules values (4,"hitloss",-15,"You sprained your ankle on a slight depression");
insert into MinusOneRules values (5,"gameover",0,"You fell into a deep crevice, landed on a ledge and starved to death");
insert into MinusOneRules values (6,"hitloss",-5,"A wraith chased you out of the tunnel");
insert into MinusOneRules values (7,"gameover",0,"A cockatrice turned you into stone!");
insert into MinusOneRules values (8,"gameover",0,"You ran into a swarm of killer bees!");
insert into MinusOneRules values (9,"hitloss",-20,"You got bit by a large dog guarding the passageway");
insert into MinusOneRules values (10,"hitloss",-15,"You found an energy drink, drank it and got poisoned.");
