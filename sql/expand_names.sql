-- Add column to table to hold the unabbreviated name
alter table tiger_featnames add column expanded varchar(255);

-- Add indexes to the linearid columns in both tables
create index tiger_featnames_linearid_idx on tiger_featnames(linearid);

update tiger_featnames
set expanded = qual_expanded
from tiger_name_qualifiers
where prequal != ''
and prequal = qual_code;

update tiger_featnames
set expanded = concat(expanded, ' ', dir_expanded)
from tiger_direction_codes
where predir != ''
and predir = dir_code;

update tiger_featnames 
set expanded = concat(expanded, ' ', typ_expanded)
from tiger_name_types
where pretyp != ''
and pretyp = typ_code;

update tiger_featnames
set expanded = concat(expanded, ' ', name)
where name != '' and name is not null;

update tiger_featnames
set expanded = concat(expanded, ' ', typ_expanded)
from tiger_name_types
where suftyp != '' and suftyp is not null
and suftyp = typ_code;

update tiger_featnames
set expanded = concat(expanded, ' ', dir_expanded)
from tiger_direction_codes
where sufdir != '' and sufdir is not null
and sufdir = dir_code;

update tiger_featnames
set expanded = concat(expanded, ' ', qual_expanded)
from tiger_name_qualifiers
where sufqual != '' and sufqual is not null
and sufqual = qual_code;
