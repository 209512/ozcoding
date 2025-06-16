-- 반려동물 호텔 예약 시스템에 필요한 주요 테이블(엔티티)과 그들 간의 관계를 생각해보세요.
-- 고객이 여러 반려동물을 가질 수 있다.
-- 한 반려동물은 여러 번 예약할 수 있다.
-- 예약은 객실과 연결되어야 한다.
-- 예약 시 다양한 서비스도 함께 예약할 수 있다.

create table PetOwners (
ownerId int auto_increment primary key,
name varchar(255) not null,
contact varchar(255)
);

create table Pets (
petId int auto_increment primary key,
ownerId int not null,
name varchar(255) not null,
species varchar(255),
breed varchar(255),
foreign key (ownerId) references PetOwners(ownerId) 
);

create table Rooms (
roomId int auto_increment primary key,
roomNumber varchar(255) not null unique,
roomType varchar(255),
pricePerNight decimal(10, 2) not null
);

create table Reservations (
reservationId int auto_increment primary key,
roomId int not null,
petId int not null,
startDate date not null,
endDate date not null,
foreign key (petId) references Pets(petId),
foreign key (roomId) references Rooms(roomId)
);

create table Services (
serviceId int auto_increment primary key,
reservationId int not null,
foreign key (reservationId) references Reservations(reservationId),
serviceType varchar(255),
serviceName varchar(255),
servicePrice decimal(10, 2)
);