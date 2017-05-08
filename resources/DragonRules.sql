create table DragonRules (
       Nr int not null primary key,
       Effect text CHECK (Effect = 'hitloss' or Effect = 'gameover'),
       Hitpoints int,
       Message text
       );

insert into DragonRules values (1,"hitloss",-5,"You get hit by some dragon spittle");
insert into DragonRules values (2,"gameover",0,"The dragon fries you to death!");
insert into DragonRules values (3,"hitloss",0,"A dragon appears. You are about to be fried!");
insert into DragonRules values (4,"hitloss",0,"You are about to become shiskabob!");
insert into DragonRules values (5,"hitloss",-10,"The dragon roars and cooks half of your leg");

