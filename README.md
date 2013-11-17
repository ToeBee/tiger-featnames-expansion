This is some code I have used to come up with fully expanded road names from the U.S. Census Bureau TIGER files. The basic process is:
- Download feature name relationship files from the Census Bureau
- Extract them to postgres load files
- De-duplicate the data
- Load into a postgres database
- Run queries that buid up the fully expanded name from individual parts
