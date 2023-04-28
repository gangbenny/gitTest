using { managed } from '@sap/cds/common';
namespace boardgame;

// boardgame reservation user
entity User {
  ID : String;
  password  : String;
  name  : String;
  phoneNumber : String;
  Reserve : Composition of many Reservation on Reserve.reserveUser = $self;
  key reserveID : Integer;
}

entity Boardgame {
  key serialNumber : String;
  title : String;
  genre : String;
  people : String;
  age : String;
}

entity BoardgameStore {
  name : String;
  address : String;
  phoneNumber : String;
}

entity Reservation {
  key reserveID : Integer;
  reserveDate : Date;
  reserveTime : String;
  tableNumber : Integer;
  reservePeople : Integer;
  reserveUser : Association to User;
}

// view UserViewJoin as select
//     User.ID as UID,
//     User.password as password,
//     User.name as name,
//     User.phoneNumber as phoneNumber,
//     Reservation.ID as ID,
//     Reservation.reserveDate as reserveDate,
//     Reservation.reserveTime as reserveTime,
//     Reservation.tableNumber as tableNumber,
//     Reservation.reservePeople as reservePeople
// from Reservation JOIN User on Reservation.ID = User.ID;