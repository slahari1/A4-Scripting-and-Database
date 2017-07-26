CREATE TABLE tblSurveyQuestions (ID VARCHAR(255), Date TIMESTAMP, FavMusicGenre VARCHAR(255), FavSong VARCHAR(255), FavArtist VARCHAR(255), FavStreamSer VARCHAR(255), PurchaseMusic1-5 INT; 
ALTER TABLE tblSurveyQuestions ADD PRIMARY KEY (ID);
LOAD DATA INFILE '/var/lib/mysql-files/temp.csv' INTO TABLE tblSurveyQuestions FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';