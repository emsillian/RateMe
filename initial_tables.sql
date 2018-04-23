CREATE EXTENSION citext;
CREATE TABLE ratemeusers (
username text PRIMARY KEY,
name text,
rate decimal, 
email citext not null UNIQUE
);


CREATE TABLE ratemerequest (
    request_id SERIAL PRIMARY KEY,
    username text REFERENCES ratemeusers (username),
    newrate decimal
);


CREATE TABLE ratemeresponse (
   request_id integer REFERENCES ratemerequest (request_id),
   feedbackemail citext,    
   username text,
   doit boolean DEFAULT TRUE,
   doitnow boolean DEFAULT TRUE,
   feedbackvalue decimal NOT NULL
);



