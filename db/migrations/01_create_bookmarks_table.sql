CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));


INSERT INTO bookmarks (url) VALUES ('www.google.co.uk');

INSERT INTO bookmarks (url) VALUES ('www.bbc.co.uk');

INSERT INTO bookmarks (url) VALUES ('www.hotukdeals.co.uk');

DELETE FROM bookmarks WHERE url = 'www.hotukdeals.co.uk';

UPDATE bookmarks SET url = 'www.bbc.co.uk' WHERE url = 'www.bbc.com';