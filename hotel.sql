drop table if exists clients;
drop table if exists rooms; 
drop table if exists bookings;


create table clients(clientId text PRIMARY KEY, firstName text, lastName text, phonenumber text);
create table rooms(roomNumber text PRIMARY KEY, roomName text);
create table bookings(bookingId text PRIMARY KEY,
                        F_clientId text,
                        F_roomNumber text,
                        startDate date,
                        endDate date,
                        price decimal,
                        FOREIGN KEY (F_clientId) REFERENCES clients(clientId),
                        FOREIGN KEY (F_roomNumber) REFERENCES rooms(roomNumber)
);

insert into clients(clientId, firstName, lastName, phonenumber)values("001", "Hamisi", "Kalu", "0911333333");
insert into clients(clientId, firstName, lastName, phonenumber)values("002", "Jamani", "Okoye", "0911333333");
insert into clients(clientId, firstName, lastName, phonenumber)values("003", "Kalu", "Okeke", "0911333333");
insert into clients(clientId, firstName, lastName, phonenumber)values("004", "Aiysha", "Amaechi", "0911333333");

insert into rooms(roomNumber, roomName)values("100", "Room100");
insert into rooms(roomNumber, roomName)values("101", "Room101");
insert into rooms(roomNumber, roomName)values("102", "Room102");
insert into rooms(roomNumber, roomName)values("103", "Room103");
insert into rooms(roomNumber, roomName)values("104", "Room104");
insert into rooms(roomNumber, roomName)values("105", "Room105");
insert into rooms(roomNumber, roomName)values("106", "Room106");


insert into bookings(bookingId, F_clientId, F_roomNumber, startDate, endDate, price)values("001", "001", "104", '2023:12:12', '2024:01:01', 10000);
insert into bookings(bookingId, F_clientId, F_roomNumber, startDate, endDate, price)values("002", "002", "106", '2023:12:12', '2024:01:02', 10000);
insert into bookings(bookingId, F_clientId, F_roomNumber, startDate, endDate, price)values("003", "004", "100", '2024:01:12', '2028:10:28', 100000000000);