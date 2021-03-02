
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

CREATE TABLE "completion" (
    "id" SERIAL PRIMARY KEY,
    "user_id" INT REFERENCES "user", 
    "complete" BOOLEAN NOT NULL DEFAULT false,
    "quest_id" INT NOT NULL REFERENCES "quests",
    UNIQUE("user_id" , "quest_id")
);


CREATE TABLE "quests" (
    "id" SERIAL PRIMARY KEY,
	"trader_id" INT NOT NULL REFERENCES "traders",
	"name" varchar(255) NOT NULL,
	"description" varchar(1500) NOT NULL
);

CREATE TABLE "traders" (
	"id" SERIAL PRIMARY KEY,
	"name" varchar(100) NOT NULL
);


-- SELECT 
-- quests.id AS QID, 
-- quests.name, 
-- quests.description, 
-- quests.trader_id AS TID,
-- completion.complete
-- 	FROM 
-- 	 quests 
-- 	 LEFT JOIN completion 
-- 	 ON (completion.quest_id = quests.id)
-- 	 LEFT JOIN traders
-- 	 ON (traders.id = quests.trader_id)
-- 	 ORDER BY quests.id;


/*UPSERT */

INSERT INTO traders (name)
VALUES ('prapor');

INSERT INTO traders (name)
VALUES ('therapist');

INSERT INTO traders (name)
VALUES ('skier');

INSERT INTO traders (name)
VALUES ('peacekeeper');

INSERT INTO traders (name)
VALUES ('mechanic');

INSERT INTO traders (name)
VALUES ('ragman');

INSERT INTO traders (name)
VALUES ('jaeger');

INSERT INTO traders (name)
VALUES ('fence');


-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('1', '', 
-- ''
-- );

-- SELECT *
--     FROM quests INNER JOIN completion ON (quests.id = completion.id);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'debut', 
'Kill 5 Scavs at Customs
Hand over 2 MP-133 pump-action shotguns'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Search mission', 
'Find the missing Prapors convoy, 
Locate USEC temporary camp, 
Survive and extract'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Checking', 
'Find the bronze pocket watch,
(Optional) Find the key to the tank truck
Hand over the bronze pocket watch to Prapor'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Shootout picnic', 
'Neutralize 15 Scavs on Woods'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Delivery from the past', 
'Find a secure case in the Tarcone Directors Office at the Customs terminal,
Leave the case in the Factory swing room, on 2nd floor of shop 3,
Survive and exit Factory location'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'BP depot', 
'Mark fuel tank №1 with beacon on Customs,
Mark fuel tank №2 with beacon on Customs,
Mark fuel tank №3 with beacon on Customs,
Mark fuel tank №4 with beacon on Customs,
Survive and leave the area'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The bunker - Part 1', 
'Find underground bunker,
Locate control room in the underground bunker,
Survive and extract'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The bunker - Part 2', 
'Locate the hermetic door leading to the hospital (white bishop),
Locate one of two hermetic doors leading to academy building (black bishop),
Locate one of two hermetic doors leading to barracks №1 (black pawn),
Locate one of two hermetic doors leading to barracks №2 (white pawn),
Locate the hermetic door leading to the building of the air control center (white king),
Survive and leave the area'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Bad rep evidence', 
'Find secure folder 0031 in a bunkhouse on Customs,
(Optional) Gain access to the closed room in the Factory offices,
(Optional) Find the bunkhouse key,
Hand over secure folder 0031 to Prapor,
Survive and exit Customs location'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Ice cream cones', 
'Find in raid or craft in Hideout 3 60-round mags for AK,
(Optional) Find the key from the bunker in the Terragroup employee room,
(Optional) Locate the right bunker in the Woods,
Hand over 3 60 round mags for AK to Prapor'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Postman Pat - Part 1', 
'Find a letter on a messenger in the Factory,
Survive and exit Factory location,
Hand over the letter to Therapist'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Shaking up teller', 
'Find something valuable in the dorm room 203
(Optional) Gain access to room 214
Hand over the item to Prapor'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The Punisher - Part 1', 
'Kill 15 Scavs at the Shoreline using AKM series weapon'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The Punisher - Part 2', 
'Kill 12 Scavs at the Shoreline using a suppressed weapon,
Find in raid 7 lower half-masks,
Hand masks over to Prapor'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The Punisher - Part 3', 
'Kill 25 Scavs on Customs using AKS-74U series weapon'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The Punisher - Part 4', 
'Kill 10 Scavs in Woods using 12 gauge shotguns,
Kill 10 PMCs on Shoreline. You must wear a balaclava and scav vest,
Find in raid 5 knives Bars A-2607,
Handover knives to Prapor'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The Punisher - Part 5', 
'Find in raid 1 AK-74N,
Handover AK-74N rifle to Prapor,
Find in raid 1 M4A1 assault rifle,
Handover M4A1 rifle to Prapor,
Find in raid 2 PM pistols,
Handover pistols to Prapor,
Kill 10 PMC operatives. You must be wearing a PACA vest and 6b47 helmet'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'The Punisher - Part 6', 
'Kill 15 PMC operators. You must use SVD,
Find 7 PMC BEAR dogtags,
Hand over 7 PMC BEAR dogtags,
Find 7 PMC USEC dogtags,
Hand over 7 PMC USEC dogtags'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Anesthesia', 
'Mark first trading post on Shoreline,
Mark second trading post on Shoreline,
Mark third trading post on Shoreline,
Survive and leave the area'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Grenadier', 
'Kill 12 PMCs with grenades'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Insomnia', 
'Kill 30 PMCs during nighttime (22 to 05)'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Test drive - Part 1', 
'Kill 5 PMCs using an M1A with a Hybrid 46 silencer and a Trijicon REAP-IR thermal scope'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Perfect mediator', 
'
Reach 4-th level of standing with Ragman,
Reach 4-th level of standing with Skier,
Reach 4-th level of standing with Mechanic,
Reach 4-th level of standing with Peacekeeper,
Reach 4-th level of standing with Prapor,
Reach 4-th level of standing with Therapist
'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Polikhim hobo', 
'Kill 25 Scavs on Customs'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Regulated materials', 
'Find in raid military battery,
Handover military battery,
Find in raid 5 30-mil. shells for BMP cannon,
Handover 5 30-mil. shells for BMP cannon'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'Big customer', 
'Find a transport with chemicals,
Mark the chemical transport with a beacon,
Survive and extract Customs'
);
INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'No offence', 
'Find 10 M67 grenades
Handover grenades to Prapor'
);

INSERT INTO quests (trader_id, name, description)
VALUES ('1', 'No offence', 
'Find 10 M67 grenades
Handover grenades to Prapor'
);
-- /*therapist quests */

-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('2', '', '');

-- /*therapist template^ */

INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Shortage', 'Find in raid or craft in Hideout 3 Salewa kits,
Hand over 3 Salewa kits to Therapist');

INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Operation Aquarius - Part 1', 'Find hidden water in the dorm,
Survive and extract Customs');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Operation Aquarius - Part 2', 'Eliminate 15 Scavs on Customs');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Sanitary Standards - Part 1', 'Find in raid gas analyzer
(Optional) Get access to the pumping station at the Factory
Hand over the gas analyzer to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Sanitary Standards - Part 2', 'Find in raid 2 gas analyzers
Hand over the gas analyzers to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Painkiller', 'Find in raid or craft in Hideout 4 morphine syringes
Hand the syringes over to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Pharmacist', 'Find a case with the device
(Optional) Find the paramedics car
(Optional) Get into dorm room 114
Hand over the case to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Car repair', 'Find in raid or craft in Hideout 4 car batteries
Find in raid 8 spark plugs
Hand car batteries over to Therapist
Hand spark plugs over to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Hippocratic Vow', 'Handover 500 dollars.');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Supply plans', 'Find the secure folder on the sawmill
Survive and exit Woods location
Hand over the folder to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Health Care Privacy - Part 1', 'Mark 1st ambulance
Mark 2nd ambulance
Mark 3rd ambulance
Survive and exit the location');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Health Care Privacy - Part 2', 'Gather info on the fate of the Terragroup research
Hand over info on the fate of the Terragroup research
Survive and exit the location');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Health Care Privacy - Part 3', 'Find the car that belonged to the head of the Medical Service
Pick up the blood sample
Hand over the blood sample
Survive and exit the location');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'An apple a day - keeps the doctor away', 'Handover 400,000 roubles');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Health Care Privacy - Part 4', 'Increase Health skill level to 4');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Athlete', 'Earn 10 Health skill level');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Private clinic', 'Find in raid Ophthalmoscope
Find in raid LEDX
Handover found in raid Ophthalmoscope
Handover found in raid LEDX Skin Transilluminator');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Health Care Privacy - Part 5', 'Locate the drop spot in the nighttime in Factory
Obtain 3 packs of gunpowder and leave them in the designated spot');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Decontamination service', 'Kill 40 Scavs at the Interchange, from the range less than 60 meters.You must be wearing spec. gear');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'General wares', 'Find in raid or craft in Hideout 15 cans of meat
Hand the cans over to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Colleagues - Part 1', 'Locate group that was sent to the Health resort
Locate the group that was sent to the pier
Locate the group that was sent to the cottages
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Colleagues - Part 2', 'Find in raid Sanitars surgery kit, marked with a blue symbol
Hand over Sanitars surgery kit to Therapist
Find in raid Sanitars ophtalmoscope
Hand over Sanitars optalmoscope to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Colleagues - Part 3', 'Do not kill Sanitar
Find in raid AHF1-M
Find in raid 3-(b-TG)
Obtain a blue keycard
Obtain a green keycard
Hand over AHF1-M to Therapist
Hand over 3-(b-TG) to Therapist
Hand over blue keycard to Therapist
Hand over green keycard to Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Postman Pat - Part 2', 'Hand over the letter from messenger to the Therapist');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Out of curiosity', 'Find a transport with chemicals
Mark the chemical transport with a beacon
Survive and extract Customs');
INSERT INTO quests (trader_id, name, description)
VALUES ('2', 'Trust regain', 'Find 303 dorm room key
Find ZB-014 key
Find the customs military checkpoint key
Find gas station closet key
Hand over 303 key
Hand over ZB-014 key
Hand over the checkpoint key
Hand over closet key');

-- /*skier quests */

-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('3', '', '');

-- /*skier template^ */

INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Supplier', 'Hand over found in raid or crafted in Hideout body armor to Skier
Hand over found in raid or crafted in Hideout shotgun to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'The Extortionist', 'Find the hidden valuable cargo
(Optional) Find the messenger body
(Optional) Find a place where the messenger hid the item
Hand it over to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Stirrup', 'Eliminate 3 PMC operators. You must be using pistols');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Whats on the flash drive?', 'Find in raid or craft in Hideout two USB flash drives with information
Hand them over to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Golden swag', 'Find a Gilded Zibbo lighter
Leave the lighter in the bunkhouse in the trailer parking (Customs)');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Chemical - Part 1', 'Find some information about the Deputy Chiefs past life
(Optional) Find a sleeping place of the former Deputy Chief of Security
Hand it over to Skier
Find items that can help the investigation
Hand them over to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Chemical - Part 2', 'Find any evidence that could help with the investigation
Hand the evidence over to Skier
Find any information that could help with the investigation
Hand it over to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Chemical - Part 3', 'Find a Syringe with a chemical in the Factory
Hand over the syringe to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Chemical - Part 4', 'Find a transport with chemicals
Mark the chemical transport with a beacon
Survive and extract Customs');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Loyalty buyout', 'Give 1 million roubles to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', '"Vitamins" - Part 1', 'Get first Chemical container
Hand over first Chemical container
Get second Chemical container
Hand over second Chemical container
Get third Chemical container
Hand over third Chemical container');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', '"Vitamins" - Part 2', 'Find in raid 4 Respirator
Hand over Respirator, 4 pcs
Find in raid or craft in Hideout 3 Medical bloodset
Hand over Medical bloodset, 3 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Friend from the West - Part 1', 'Kill 7 USEC
Find 7 PMC USEC dogtags
Hand over 7 PMC USEC dogtags');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Friend from the West - Part 2', 'Hand over $6,000');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Informed means armed', 'Install a WIFI camera to watch the pier
Install the WIFI camera to watch the road to port
Install the WIFI camera to watch Kiba Arms store');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Chumming', 'Stash 3 gold chains under the mattress next to BTR-80A
Stash 3 gold chains in the microwave on the 3rd floor of dorms
Stash 3 gold chains in the middle accommodation unit of the sawmill
Kill 5 PMC operators on Interchange in the 22:00 till 10:00 time period');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Silent caliber', 'Kill 20 Scavs with a suppressed 12 gauge shotgun
Kill 10 PMCs with a suppressed 12 gauge shotgun');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Bullshit', 'Find False flash drive
Put sniper rifle SV-98 (Dorms, 3-rd floor. Pile of trash opposite the stairs
Put Roler watch (Dorms, 3-rd floor. Pile of trash opposite the stairs)
Put fake flash drive (Dorms, 3-rd floor. Pile of trash opposite the stairs)
Do not kill Scavs at Customs until the quest is completed');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Setup', 'Kill 15 PMCs at Customs. You must be wearing spec. gear');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Flint', 'Earn 6 Stress Resistance skill level');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Lend lease - Part 1', 'Get first Motor Controller
Hand over first controller
Get second Motor Controller
Hand over second controller
Get third Motor Controller
Hand over third controller
Get first Single-axis Fiber Optic Gyroscope
Hand over first Single-axis Fiber Optic Gyroscope
Get second Single-axis Fiber Optic Gyroscope
Hand over second Single-axis Fiber Optic Gyroscope');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Kind of sabotage', 'Hand over folder 0052 to Skier');
INSERT INTO quests (trader_id, name, description)
VALUES ('3', 'Rigged game', 'Put a marker to the Medical container at the health resort
Put a marker to the Medical container by cottages
Put a marker to the Medical container at the pier
Survive and leave the area');


-- /*peacekeeper quests */


-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('4', '', '');
-- /*peacekeeper template^ */

INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Fishing Gear', 'Find the secret spot
Leave sniper rifle in place
Leave multitool in place
Survive and leave the area');

INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Tigr Safari', 'Mark first Tigr vehicle at Customs
Mark second Tigr vehicle at Customs
Mark third Tigr vehicle at Customs
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Scrap Metal', 'Mark first tank T-90 at Shoreline
Mark second tank T-90 at Shoreline
Mark third tank T-90 at Shoreline
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Eagle Eye', 'Find the first UAV crash site
Find SAS disk from the first crashed drone
Hand over SAS disk from the first crashed drone
Find the second UAV crash site
Find SAS disk from the second crashed drone
Hand over SAS disk from the second crashed drone');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Humanitarian Supplies', 'Mark first truck with lost UN cargo
(Optional) Find first truck with lost UN cargo
Mark second truck with lost UN cargo
(Optional) Find second truck with lost UN cargo
Find 5 MRE ration packs
Deliver 5 MRE ration packs to Peacekeeper
Kill 10 Scavs at the Shoreline. You must be wearing UN uniform (MF-UNTAR body armor and UN helmet)
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'The Cult - Part 1', 'Find the missing informant
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'The Cult - Part 2', 'Put the beacon on the first ritual spot in the Woods
Put the beacon on the ritual spot at the Customs
Put the beacon on the second ritual spot in the Woods
Put the beacon on the ritual spot in the Shoreline
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 1', 'Kill 7 Scavs at the Shoreline with 12 gauge shotgun headshots');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 2', 'Mark the helicopter with a beacon
Mark a safe road with a beacon
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 3', 'Find in raid WD-40 100ml
Hand over WD-40 100ml
Find in raid Clin wipers, 2 pcs
Hand over Clin wipers, 2 pcs
Find in raid Corrugated hoses, 2 pcs
Hand over Corrugated hoses, 2 pcs
Find in raid Ox bleach, 2 pcs
Hand over Ox bleach, 2 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 4', 'Find generators in right wing
Find generators in left wing
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 5', 'Find the key from the locked resort rooms
Hand over key from the locked resort rooms');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 6', 'Hand over $8,000');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Spa Tour - Part 7', 'Find in raid or craft in Hideout Morphine injector, 4 pcs
Hand over Morphine injector, 4 pcs
Find in raid Heat-exchange alkali surface washer, 2 pcs
Hand over Heat-exchange alkali surface washer, 2 pcs
Find in raid or craft in Hideout Corrugated hose, 2 pcs
Hand over Corrugated hose, 2 pcs
Find in raid 5L propane tank, 2 pcs
Hand over 5L propane tank, 2 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Cargo X - Part 1', 'Find the cargo record in the computer room
Hand over the retrieved data to Peacekeeper');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Cargo X - Part 2', 'Find a room with reservoirs
Find any information on the second part of the shipment
Give the info on the second part of the cargo to Peacekeeper');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Cargo X - Part 3', 'Find hidden Terragroup cargo
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Wet Job - Part 1', 'Kill 10 Scavs at the Shoreline using a suppressed M4 or ADAR');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Wet Job - Part 2', 'Find the fishers dwelling
Set the beacon
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Wet Job - Part 3', 'Find Artyoms car
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Wet Job - Part 4', 'Find a list of resort tenants
Hand over the list of tenants to Peacekeeper');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Wet Job - Part 5', 'Find info on Artyoms work
Hand over the info to Peacekeeper');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Mentor', 'Handover 50,000 euros');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Wet Job - Part 6', 'Reach level 7 in Sniper rifle handling skill');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'The guide', 'Survive at Interchange (Status: Survived)
Survive at Shoreline (Status: Survived)
Survive at Factory (Status: Survived)
Survive at Laboratory (Status: Survived)
Survive at Woods (Status: Survived)
Survive at Customs (Status: Survived)
Survive at Reserve (Status: Survived)');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Samples', 'Obtain in raid M.U.L.E. stimulant
Hand over M.U.L.E. stimulant to Peacekeeper
Obtain in raid the "Obdolbos" cocktail
Hand over the "Obdolbos" cocktail to Peacekeeper
Obtain in raid "Meldonin"
Hand over "Meldonin" to Peacekeeper
Obtain in raid AHF1-M
Hand over AHF1-M to Peacekeeper
Obtain in raid P-22
Hand over P-22 to Peacekeeper
Obtain in raid "Norepinephrine"
Hand over "Norepinephrine" to Peacekeeper
Obtain in raid 3-(b-TG)
Hand over 3-(b-TG) to Peacekeeper');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'TerraGroup employee', 'Find Sanitars workplace in the Lab
Find information about Sanitars work
Hand over marked with duct tape flash drive to Peacekeeper');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Lend lease - Part 2', 'Find in raid 1 Military COFDM wireless Signal Transmitter
Find in raid 2 Virtex programmable processors
Handover 1 Military COFDM wireless Signal Transmitter
Handover 2 Virtex programmable processors');
INSERT INTO quests (trader_id, name, description)
VALUES ('4', 'Peacekeeping mission', 'Kill 12 Scavs on Woods while dressed in the UN uniform (UNTAR helmet, MF-UNTAR armor vest, Colt M4A1)
Kill 12 Scavs on Customs while dressed in the UN uniform (UNTAR helmet, MF-UNTAR armor vest, Colt M4A1)
Kill 12 Scavs on Interchange while dressed in the UN uniform (UNTAR helmet, MF-UNTAR armor vest, Colt M4A1)
Kill 12 Scavs on Shoreline while dressed in the UN uniform (UNTAR helmet, MF-UNTAR armor vest, Colt M4A1)');

-- /*mechanic quests */
-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('5', '', '');
-- /*mechanic template^ */

INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Introduction', 'Find Jaegers camp
Find Jaegers message
Handover the message to the Mechanic');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 1', 'Modify MP-133 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 2', 'Modify AKS-74U to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 3', 'Modify MP5 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 4', 'Modify M4A1 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 5', 'Modify DVL-10 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 6', 'Modify R11 RSASS to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 7', 'Modify Remington Model 870 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 8', 'Modify AKM to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 9', 'Modify AKS-74N to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 10', 'Modify AK-105 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 11', 'Modify AS VAL to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 12', 'Modify AK-102 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 13', 'Modify SIG MPX to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 14', 'Modify AKMN to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 15', 'Modify M1A to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Gunsmith - Part 16', 'Modify M4A1 to comply with the required specification');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Signal - Part 1', 'Find the first signal source
Find the second signal source
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Insider', 'Reach level 3 loyalty with Prapor');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Signal - Part 2', 'Find in raid 3 PC CPU
Hand over PC CPU, 3 pcs
Find in raid or craft in Hideout 3 Rechargeable battery
Hand over Rechargeable battery, 3 pcs
Find in raid or craft in Hideout 3 Printed circuit board
Hand over Printed circuit board, 3 pcs
Find in raid 3 Broken GPhone
Hand over Broken GPhone, 3 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Scout', 'Find a way out of the factory 1
Find a way out of the factory 2
Find a way out of the factory 3
Survive and exit the location');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Signal - Part 3', 'Place first jammer
Place second jammer
Place third jammer
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Signal - Part 4', 'Increase memory skill level to 4');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Farming - Part 1', 'Fix the first control board
Fix the second control board
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Farming - Part 2', 'Find in raid or craft in Hideout Powercord, 2 pcs
Hand over Powercord, 2 pcs
Find in raid T-Shaped Plug, 4 pcs
Hand over T-Shaped Plug, 4 pcs
Find in raid or craft in Hideout Printed circuit board, 2 pcs
Hand over Printed circuit board, 2 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Bad habit', 'Find in raid Malboro cigarettes, 5 pcs
Hand over Malboro cigarettes, 5 pcs
Find in raid Strike cigarettes, 5 pcs
Hand over Strike cigarettes, 5 pcs
Find in raid or craft in Hideout Wilston cigarettes, 5 pcs
Hand over Wilston cigarettes, 5 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Farming - Part 3', 'Find a warehouse of confiscate
Get package with graphics cards
Hand over package with graphics cards');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Farming - Part 4', 'Find in raid or craft in Hideout Graphics card, 3 pcs
Hand over Graphics card, 3 pcs
Find in raid CPU Fan, 8 pcs
Hand over CPU Fan, 8 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Psycho Sniper', 'Upgrade the Sniper skill to level 9');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'A Shooter Born in Heaven', 'Kill 3 PMCs with headshots in the Woods from a distance of more than 100 meters.
Kill 3 PMCs with headshots on the Reserve base from a distance of more than 100 meters.
Kill 3 PMCs with headshots in the Shoreline from a distance of more than 100 meters.
Kill 3 PMCs with headshots in the Customs from a distance of more than 100 meters.');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Fertilizers', 'Find in raid or craft in Hideout 5 Wires
Find in raid or craft in Hideout 5 Capacitors
Handover 5 Wires
Handover 5 Capacitors');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'Import', '	
Find in raid or craft in Hideout UHF RFID Reader
Find in raid or craft in Hideout VPX Flash Storage Module
Handover UHF RFID Reader
Handover VPX Flash Storage Module');
INSERT INTO quests (trader_id, name, description)
VALUES ('5', 'The chemistry closet', 'Find Sanitars office in Health resort
Survive and leave the area');


-- /*ragman quests */
-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('6', '', '');
-- /*ragman template^ */

INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Only business', 'Obtain level 2 loyalty with Ragman');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Make ULTRA Great Again', 'Kill 25 Scavs at the Interchange.');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Big sale', 'Check AVOKADO
Check KOSTIN
Check tRend
Check DINO CLOTHES
Check TOP BRAND
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'The Blood of War - Part 1', 'Mark tank 1
Mark tank 2
Mark tank 3
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Dressed to kill', '	
Hand over found in raid Ushanka ear-flap cap, 2 pcs
Hand over found in raid Cowboy hat, 2 pcs
Find in raid 2 Ushanka hats
Find in raid 2 Cowboy hats');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Gratitude', 'Find the secret spot
Leave the Ghost balaclava in place
Leave the Shemagh in place
Leave the RayBench sunglasses in place
Leave the Round frame sunglasses in place');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Hot delivery', 'Stash Peltor ComTac 2 in specified place, 2 pcs
Stash 6B47 Ratnik-BSh Helmet in specified place, 2 pcs
Stash BNTI Gzhel-K armor in specified place, 2 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Scavenger', 'Earn 9 Search skill level');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Sales Night', 'Survive in the raid at Interchange 7 times');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Database - Part 1', 'Get Goshan cargo manifests
Hand over Goshan cargo manifests
Get OLI cargo manifests
Hand over OLI cargo manifests
Get IDEA cargo manifests
Hand over IDEA cargo manifests');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Database - Part 2', 'Get OLI cargo route documents
Hand over OLI cargo route documents');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Minibus', 'Mark first minibus
Mark second minibus
Mark third minibus
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Sew it good - Part 1', 'Find in raid Ski hat with holes for eyes
Hand over Ski hat with holes for eyes
Find in raid Pilgrim tourist backpack
Hand over Pilgrim tourist backpack');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'The Blood of War - Part 2', 'Find in raid Fuel conditioner, 4 pcs
Hand over Fuel conditioner, 4 pcs');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'The Blood of War - Part 3', 'Find and mark first fuel stash
Find and mark second fuel stash
Find and mark third fuel stash
Survive and leave the area');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Living high is not a crime - Part 2', 'Find in raid 3 antique teapots
Find in raid 2 antique vases
Handover 3 antique teapots
Handover 2 antique vases');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Sew it good - Part 2', 'Get Gzhel in 0-50% condition
Hand over Gzhel in 0-50% condition
Get Gzhel in 50-100% condition
Hand over Gzhel in 50-100% condition');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'The key to success', 'Get Clothes design handbook Part 1
Hand over Clothes design handbook Part 1
Get Clothes design handbook Part 2
Hand over Clothes design handbook Part 2');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'No fuss needed', 'Increase the Therapist loyalty level to 3');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'The stylish one', 'Eliminate Killa 100 times');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Supervisor', 'Get key from Goshan cash registers
Hand over key from Goshan cash registers');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Sew it good - Part 3', 'Get 6B43 with 0-50% condition
Hand over 6B43 with 0-50% condition
Get 6B43 with 50-100% condition
Hand over 6B43 with 50-100% condition');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Living high is not a crime - Part 1', 'Find in raid Bronze lion, 2 pcs
Hand over Bronze lion, 2 pcs
Find in raid Horse figurine, 2 pcs
Hand over Horse figurine, 2 pcs
Find in raid Cat figurine
Hand over Cat figurine
Find in raid Roler submariner gold wrist watch
Hand over Roler submariner gold wrist watch');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Sew it good - Part 4', 'Find in raid 2 Wartech (TV-109, TV-106)
Hand over 2 Wartech (TV-109, TV-106)
Find in raid 2 BlackRock chest rig
Hand over 2 BlackRock chest rig');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Charisma brings success', 'Increase the Charisma level to 10');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Textile - Part 1', 'Find in raid 5 pcs. of Aramid fiber cloth
Find in raid or craft in Hideout 10 pcs. of Ripstop cloth
Find in raid 3 pcs. of paracord
Hand over Aramid fiber cloth 5 pcs.
Hand over Ripstop cloth 10 pcs.
Hand over paracord 3 pcs.');
INSERT INTO quests (trader_id, name, description)
VALUES ('6', 'Textile - Part 2', 'Find in raid 10 pcs. of Fleece cloth
Hand over Fleece cloth 10 pcs.
Find in raid 10 pcs. of Polyamide fabric Cordura
Hand over Polyamide fabric Cordura 10 pcs.
Find in raid KEKTAPE duct tape 5 pcs.
Hand over KEKTAPE duct tape 5 pcs.');


-- /*jaeger quests */
-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('7', '', '');
-- /*jaeger template^ */


INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Acquaintance', 'Get 3 found in raid or craft in Hideout Iskra lunch boxes
Get 2 found in raid packs of Emelya rye croutons
Get 2 found in raid cans of delicious beef stew');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Unprotected, but dangerous', 'Kill 5 scavs on Woods. You should not wear body armor');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Thrifty', 'Stash "Iskra" MRE in the ZB-016 bunker
Stash bottle of water in the ZB-016 bunker
Stash "Iskra" MRE in the ZB-014 bunker
Stash bottle of water in the ZB-014 bunker');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Zhivchik', 'Spend 5 minutes in a state of complete dehydration
Survive and extract');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Wounded beast', 'Kill 3 scavs while suffering from pain effect');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Tough guy', 'Eliminate 3 scavs on Woods in a single raid. You must not use medicine.
Dont use any Medical items during the quest');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Courtesy visit', 'Find priest house
Find fisherman house
Find chairman house');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Nostalgia', 'Find a room with the view of a bay, where Jaeger was staying
Find Jaegers photo album
Handover photo album to Jaeger');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Cold blooded', 'Eliminate 2 PMCs with the headshot while having tremor (with a broken limb)');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Junkie', 'Kill 15 scavs on Woods while having stimulant effects');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Eagle-owl', 'Kill 6 scavs between 21:00 and 04:00 without using NVG or Thermal sights');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'The survivalist path - Combat medic', 'Reach level 5 Vitality skill');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Ambulance', 'Find in raid or craft in Hideout portable defibrillator
Handover portable defibrillator
Find in raid 2 CMS surgery kits
Handover 2 CMS surgery kits');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Secured perimeter', 'Eliminate 6 PMС on Factory in the office area');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Reserv', 'Find the food storage');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Woods cleaning', 'Kill 30 scavs all over the Tarkov territory');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Controller', 'Kill 2 PMCs blinded with the flashbang');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Evil watchman', 'Kill 5 PMCs in the Dorms area on Customs');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Fishing place', 'Find in raid 2 TerraGroup Labs access keycards
Handover 2 TerraGroup Labs access keycards');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - The trophy', 'Eliminate Reshala
Find in raid the golden TT
Handover golden TT to Jaeger');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Justice', 'Kill 3 scavs that are dressed in police uniform');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Sell-out', 'Eliminate Killa
Find Killas helmet
Handover Killas helmet to Jaeger');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Woods keeper', 'Eliminate Shturman
Find Shturmans key
Handover the Shturmans stash key to Jaeger');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Hunting trip', 'Get a Shturman kill with a Remington M700 with a scope');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Eraser - Part 1', 'Find and eliminate Glukhar');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Eraser - Part 2', 'Eliminate 6 raiders');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 1	', 'Kill 5 Scavs over 40 meters away with a bolt-action rifle without a scope');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 2', 'Make 3 hits in the legs from more than 40 meters away with a bolt-action rifle
Make 2 headshots from more than 40 meters away with a bolt-action rifle');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 3', 'Kill 3 PMC operatives with a bolt-action rifle at close range, less than 25 meters away');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 4', 'Level up the Sniper Rifles skill to 3');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 5', 'Kill 8 Scavs at Customs with a bolt-action rifle between 21:00 and 5:00');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 6', 'Kill 5 Scav snipers with a bolt-action rifle');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 7', 'Kill 5 PMC operatives with a suppressed bolt-action rifle from at least 45 meters away');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', '"The Tarkov shooter" - Part 8', 'Kill 3 PMC operatives with a bolt-action rifle in a single raid on Woods');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Shady business', 'Find in raid 3 or craft in Hideout flash drives
Handover 3 flash drives');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Huntsman path - Sadist', 'Kill Sanitar');
INSERT INTO quests (trader_id, name, description)
VALUES ('7', 'Hunter', 'Eliminate Shturman 25 times');

-- /*fence quests */
-- INSERT INTO quests (trader_id, name, description)
-- VALUES ('8', '', '');
-- /*fence template^ */

INSERT INTO quests (trader_id, name, description)
VALUES ('8', 'Collector', 
'Find an Old firesteel in raid, 
Handover the Old firesteel, 
Find an Antique axe in raid, 
Handover the Antique axe, 
Find a Battered antique Book in raid, 
Handover the Battered antique Book, 
Find a FireKlean gun lube in raid, 
Handover the FireKlean gun lube,
Find a Golden rooster in raid,
Handover the Golden rooster,
Find a Silver Badge in raid,
Handover the Silver Badge,
Find a Deadlyslobs beard oil in raid,
Handover the Deadlyslobs beard oil,
Find a Golden 1GPhone in raid,
Handover the Golden 1GPhone,
Find a Jar of DevilDog mayo in raid,
Handover the Jar of DevilDog mayo,
Find a Can of sprats in raid,
Handover the Can of sprats,
Find a Fake mustache in raid,
Handover the Fake mustache,
Find a Kotton beanie in raid,
Handover the Kotton beanie,
Find a Can of Dr. Lupos coffee beans in raid,
Handover the Can of Dr. Lupos coffee beans,
Find a Pestily plague mask in raid,
Handover the Pestily plague mask,
Find a Raven figurine in raid,
Handover the Raven figurine,
Find a Shroud half-mask in raid,
Handover the Shroud half-mask,
Find a Veritas guitar pick in raid,
Handover the Veritas guitar pick,
Find a 42nd Signature Blend English Tea in raid,
Handover the 42nd Signature Blend English Tea');