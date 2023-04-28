using boardgame from '../db/schema';

service BoardgameService @(requires : 'any'){
    @readonly entity User as projection on boardgame.User;
    @readonly entity BoardgameStore as projection on boardgame.BoardgameStore;
    @readonly entity Reservation as projection on boardgame.Reservation;
    @readonly entity Boardgame as projection on boardgame.Boardgame;
    // @readonly entity UserViewJoin as projection on boardgame.UserViewJoin;
    @readonly entity UserViewAssoc as projection on User;

    // view UserViewJoin as select
    // User.ID as ID,
    // User.password as password,
    // User.name as name,
    // User.phoneNumber as phoneNumber,
    // Reservation.reserveNumber as reserveNumber,
    // Reservation.reserveDate as reserveDate,
    // Reservation.reserveTime as reserveTime,
    // Reservation.tableNumber as tableNumber,
    // Reservation.reservePeople as reservePeople
    // from Reservation JOIN User on Reservation.reserveNumber = User.reserveNumber; 
}
