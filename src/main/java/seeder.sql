USE adlister_db;

INSERT INTO users (username, email, password) VALUES ('Savanna123', 'savanna@codeup.com', 'savanna123');
INSERT INTO ads (user_id, title, description) VALUES
(1, 'Free cat to good home', 'Found this sweet kitten! Someone please take it in as your forever pet.'),
(1, 'Need a place to crash', 'Can I sleep on your couch this weekend? I have my own food. Call: 210-665-4509'),
(1, 'Boat 4 sale', 'Good boat, wont float for some reason. $5,000 OBO');

SELECT * FROM ads;

SELECT * FROM users;