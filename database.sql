
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "user_id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL,
    CONSTRAINT "user_pk" PRIMARY KEY ("user_id")
);

CREATE TABLE "completion" (
    "id" INT,
    "user_id" INT,
    "complete" BOOLEAN NOT NULL,
    CONSTRAINT "completion_pk" PRIMARY KEY ("user_id")
);


CREATE TABLE "quests" (
    "id" serial NOT NULL,
	"user_id" integer,
	"trader_id" integer,
	"name" varchar(255) NOT NULL,
	"description" varchar(1500) NOT NULL,
    CONSTRAINT "quests_pk" PRIMARY KEY ("id","user_id")
);

CREATE TABLE "traders" (
	"id" serial NOT NULL,
	"name" serial(100) NOT NULL,
	CONSTRAINT "traders_pk" PRIMARY KEY ("id")
);




ALTER TABLE "quests" ADD CONSTRAINT "quests_fk0" FOREIGN KEY ("trader_id") REFERENCES "traders"("id");



ALTER TABLE "completion" ADD CONSTRAINT "completion_fk0" FOREIGN KEY ("user_id") REFERENCES "user"("user_id");
ALTER TABLE "completion" ADD CONSTRAINT "completion_fk1" FOREIGN KEY ("quest_id") REFERENCES "Quests"("id");


INSERT INTO traders (name)
VALUES ('prapor');

INSERT INTO traders (name)
VALUES ('therapist');

INSERT INTO traders (name)
VALUES ('fence');

INSERT INTO traders (name)
VALUES ('skier');

INSERT INTO traders (name)
VALUES ('peacekeeper');

INSERT INTO traders (name)
VALUES ('ragman');

INSERT INTO traders (name)
VALUES ('jaeger');

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', '', 
''
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'debut', 
'Kill 5 Scavs at Customs
Hand over 2 MP-133 pump-action shotguns'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Search mission', 
'Find the missing Prapors convoy, 
Locate USEC temporary camp, 
Survive and extract'
);


SELECT * FROM quests;


INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Checking', 
'Find the bronze pocket watch,
(Optional) Find the key to the tank truck
Hand over the bronze pocket watch to Prapor'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Shootout picnic', 
'Neutralize 15 Scavs on Woods'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Delivery from the past', 
'Find a secure case in the Tarcone Directors Office at the Customs terminal,
Leave the case in the Factory swing room, on 2nd floor of shop 3,
Survive and exit Factory location'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'BP depot', 
'Mark fuel tank №1 with beacon on Customs,
Mark fuel tank №2 with beacon on Customs,
Mark fuel tank №3 with beacon on Customs,
Mark fuel tank №4 with beacon on Customs,
Survive and leave the area'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The bunker - Part 1', 
'Find underground bunker,
Locate control room in the underground bunker,
Survive and extract'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The bunker - Part 2', 
'Locate the hermetic door leading to the hospital (white bishop),
Locate one of two hermetic doors leading to academy building (black bishop),
Locate one of two hermetic doors leading to barracks №1 (black pawn),
Locate one of two hermetic doors leading to barracks №2 (white pawn),
Locate the hermetic door leading to the building of the air control center (white king),
Survive and leave the area'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Bad rep evidence', 
'Find secure folder 0031 in a bunkhouse on Customs,
(Optional) Gain access to the closed room in the Factory offices,
(Optional) Find the bunkhouse key,
Hand over secure folder 0031 to Prapor,
Survive and exit Customs location'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Ice cream cones', 
'Find in raid or craft in Hideout 3 60-round mags for AK,
(Optional) Find the key from the bunker in the Terragroup employee room,
(Optional) Locate the right bunker in the Woods,
Hand over 3 60 round mags for AK to Prapor'
);

INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Postman Pat - Part 1', 
'Find a letter on a messenger in the Factory,
Survive and exit Factory location,
Hand over the letter to Therapist'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Shaking up teller', 
'Find something valuable in the dorm room 203
(Optional) Gain access to room 214
Hand over the item to Prapor'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The Punisher - Part 1', 
'Kill 15 Scavs at the Shoreline using AKM series weapon'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The Punisher - Part 2', 
'Kill 12 Scavs at the Shoreline using a suppressed weapon,
Find in raid 7 lower half-masks,
Hand masks over to Prapor'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The Punisher - Part 3', 
'Kill 25 Scavs on Customs using AKS-74U series weapon'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The Punisher - Part 4', 
'Kill 10 Scavs in Woods using 12 gauge shotguns,
Kill 10 PMCs on Shoreline. You must wear a balaclava and scav vest,
Find in raid 5 knives Bars A-2607,
Handover knives to Prapor'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The Punisher - Part 5', 
'Find in raid 1 AK-74N,
Handover AK-74N rifle to Prapor,
Find in raid 1 M4A1 assault rifle,
Handover M4A1 rifle to Prapor,
Find in raid 2 PM pistols,
Handover pistols to Prapor,
Kill 10 PMC operatives. You must be wearing a PACA vest and 6b47 helmet'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'The Punisher - Part 6', 
'Kill 15 PMC operators. You must use SVD,
Find 7 PMC BEAR dogtags,
Hand over 7 PMC BEAR dogtags,
Find 7 PMC USEC dogtags,
Hand over 7 PMC USEC dogtags'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Anesthesia', 
'Mark first trading post on Shoreline,
Mark second trading post on Shoreline,
Mark third trading post on Shoreline,
Survive and leave the area'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Grenadier', 
'Kill 12 PMCs with grenades'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Insomnia', 
'Kill 30 PMCs during nighttime (22 to 05)'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Test drive - Part 1', 
'Kill 5 PMCs using an M1A with a Hybrid 46 silencer and a Trijicon REAP-IR thermal scope'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Perfect mediator', 
'
Reach 4-th level of standing with Ragman,
Reach 4-th level of standing with Skier,
Reach 4-th level of standing with Mechanic,
Reach 4-th level of standing with Peacekeeper,
Reach 4-th level of standing with Prapor,
Reach 4-th level of standing with Therapist
'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Polikhim hobo', 
'Kill 25 Scavs on Customs'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Regulated materials', 
'Find in raid military battery,
Handover military battery,
Find in raid 5 30-mil. shells for BMP cannon,
Handover 5 30-mil. shells for BMP cannon'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'Big customer', 
'Find a transport with chemicals,
Mark the chemical transport with a beacon,
Survive and extract Customs'
);
INSERT INTO quests (user_id, trader_id, name, description)
VALUES ('1','1', 'No offence', 
'Find 10 M67 grenades
Handover grenades to Prapor'
);
