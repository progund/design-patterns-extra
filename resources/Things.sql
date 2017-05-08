create table Things (
       Thing text not null primary key,
       Roomid int,
       Visible int CHECK (visible = 0 or visible = 1),
       Attainable int CHECK (attainable = 0 or attainable = 1),
       foreign key (Roomid) references Cave(Roomid)
);

insert into Things values ("Skeleton Key",3,1,1);
insert into Things values ("Cage",10,1,1);
insert into Things values ("Rod",11,1,1);

/* Bird becomes attainable if Cage in backpack  *
 * but not if Rod is also in backpack           */
insert into Things values ("Bird",13,1,0);


insert into Things values ("Gold",18,1,1);
insert into Things values ("Diamonds",27,1,1);
insert into Things values ("Silver",28,1,1);
insert into Things values ("Jewelry",29,1,1);
insert into Things values ("Coins",30,1,1);

/* Glass Key becomes visible and attainable if *
 * you get rid of the dragon See Cave.sql      */
insert into Things values ("Glass Key",120,0,0);  
                                              
insert into Things values ("Rusty Key",203,1,1);
insert into Things values ("Brass Key",214,1,1);



/* The pirate chest is visible but cannot be moved   *
 *   It can be opened with the 4 keys                */
insert into Things values ("Pirate Chest",250,1,0); 
                                                  
