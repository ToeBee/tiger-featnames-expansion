drop table if exists tiger_direction_codes, tiger_name_qualifiers, tiger_name_types;

create table tiger_direction_codes (
  dir_code varchar(5),
  dir_abbrv varchar(5),
  dir_expanded varchar(20)
);

create table tiger_name_qualifiers (
  qual_code varchar(5),
  qual_abbrv varchar(5),
  qual_expanded varchar(20)
);


insert into tiger_direction_codes values ('11', 'N', 'North');
insert into tiger_direction_codes values ('12', 'S', 'South');
insert into tiger_direction_codes values ('13', 'E', 'East');
insert into tiger_direction_codes values ('14', 'W', 'West');
insert into tiger_direction_codes values ('15', 'NE', 'Northeast');
insert into tiger_direction_codes values ('16', 'NW', 'Northwest');
insert into tiger_direction_codes values ('17', 'SE', 'Southeast');
insert into tiger_direction_codes values ('18', 'SW', 'Southwest');
insert into tiger_direction_codes values ('19', 'N', 'Norte');
insert into tiger_direction_codes values ('20', 'S', 'Sur');
insert into tiger_direction_codes values ('21', 'E', 'Este');
insert into tiger_direction_codes values ('22', 'O', 'Oeste');
insert into tiger_direction_codes values ('23', 'NE', 'Noreste');
insert into tiger_direction_codes values ('24', 'NO', 'Noroeste');
insert into tiger_direction_codes values ('25', 'SE', 'Sudeste');
insert into tiger_direction_codes values ('26', 'SO', 'Sudoeste');


insert into tiger_name_qualifiers values ('1', 'Acc', 'Access');
insert into tiger_name_qualifiers values ('12', 'Alt', 'Alternate');
insert into tiger_name_qualifiers values ('13', 'Bus', 'Business');
insert into tiger_name_qualifiers values ('14', 'Byp', 'Bypass');
insert into tiger_name_qualifiers values ('15', 'Con', 'Connector');
insert into tiger_name_qualifiers values ('16', 'Exd', 'Extended');
insert into tiger_name_qualifiers values ('17', 'Exn', 'Extension');
insert into tiger_name_qualifiers values ('18', 'Hst', 'Historic');
insert into tiger_name_qualifiers values ('19', 'Lp', 'Loop');
insert into tiger_name_qualifiers values ('20', 'Old', 'Old');
insert into tiger_name_qualifiers values ('21', 'Pvt', 'Private');
insert into tiger_name_qualifiers values ('22', 'Pub', 'Public');
insert into tiger_name_qualifiers values ('23', 'Scn', 'Scenic');
insert into tiger_name_qualifiers values ('24', 'Spr', 'Spur');
insert into tiger_name_qualifiers values ('25', 'Rmp', 'Ramp');
insert into tiger_name_qualifiers values ('26', 'Unp', 'Underpass');
insert into tiger_name_qualifiers values ('27', 'Ovp', 'Overpass');


create table tiger_name_types (
  typ_code varchar(5),
  typ_expanded varchar(50),
  typ_abbrv varchar(25),
  typ_spanish varchar(5),
  typ_translation varchar(50),
  typ_prefix varchar(5),
  typ_suffix varchar(5)
);

-- The tiger_abbrev.csv file is something I created from the TIGER
-- documentation PDF files. It contains expansions for things like 
-- Rd->Road along with some flags that were also in the PDF
\copy tiger_name_types from 'tiger_abbrev.csv' with CSV;
