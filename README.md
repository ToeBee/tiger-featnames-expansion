This is some code I have used to come up with fully expanded road names from the U.S. Census Bureau TIGER files. 
The basic process is:
- Download feature name relationship files from the Census Bureau
- Extract them to postgres load files
- De-duplicate the data
- Load into a postgres database
- Run queries that buid up the fully expanded name from individual parts

The result is a mapping of LINEARID to expanded road name. I used this to run an UPDATE query 
on the database behind the OSM-US TIGER name overlay tiles so that we could render full name.

To use these scripts, you will need a postgres database available for use.
Then execute the extract_files.bash command in the directory that you have all the TIGER files
downloaded to. Then execute the .sql files against the postgres database in this order:
- create_and_load.sql
- load_tiger_codes.sql
- expand_names.sql
