
create table COUNTRY (
Country_Name Varchar(20) NOT NULL,
Population  decimal(10,2),
No_of_Worldcup_Won int,
Manager varchar (20),
primary key (Country_Name)
);

create table PLAYERS (
Player_Id int NOT NULL, 
Name varchar(40), 
FName varchar(20) ,
LName varchar(35),
DOB date,
Country varchar(20),
Height int,
Club varchar(30),
Position varchar(10),
Caps_for_Country int,
Is_Captain varchar(5),
primary key (Player_id),
foreign key (Country)references Country(Country_Name) );

create table MATCH_RESULTS (
Match_Id int NOT NULL,
Date_of_Match date,
Start_Time_of_Match varchar(10),
Team1 varchar(25),
Team2 varchar(25),
Team1_Score int,
Team2_Score int,
Stadium varchar(35),
Host_City varchar(20),
primary key (Match_Id),
foreign key (Team1)
references Country(Country_Name));

alter table MATCH_RESULTS
add foreign key (Team2)
references Country(Country_Name);

create table PLAYER_CARD (
Player_Id int NOT NULL,
No_of_Yellow_Cards int,
No_of_Red_Cards int,
primary key (Player_Id),
foreign key (Player_Id) references PLAYERS(Player_Id));

create table PLAYER_ASSISTS_GOALS (
Player_Id int NOT NULL,
No_of_Matches int,
Goals int,
Assists int,
Minutes_Played int,
primary key (Player_Id),
foreign key (Player_Id) references PLAYERS(Player_Id));



