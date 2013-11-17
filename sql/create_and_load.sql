CREATE TABLE tiger_featnames (
   fullname VARCHAR(100), 
   name VARCHAR(100), 
   predirabrv VARCHAR(15), 
   pretypabrv VARCHAR(50), 
   prequalabr VARCHAR(15), 
   sufdirabrv VARCHAR(15), 
   suftypabrv VARCHAR(50), 
   sufqualabr VARCHAR(15), 
   predir VARCHAR(2), 
   pretyp VARCHAR(3), 
   prequal VARCHAR(2), 
   sufdir VARCHAR(2), 
   suftyp VARCHAR(3), 
   sufqual VARCHAR(2), 
   linearid VARCHAR(22), 
   mtfcc VARCHAR(5)
);

\copy tiger_featnames from tiger_all_deduped.dump
