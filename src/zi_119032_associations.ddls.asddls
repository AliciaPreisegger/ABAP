@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 6: Associations'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119032_Associations
  as select from /dmo/connection
  association [*] to /dmo/flight as _Flights on  /dmo/connection.carrier_id    = _Flights.carrier_id
                                             and /dmo/connection.connection_id = _Flights.connection_id
{

  key /dmo/connection.carrier_id      as CarrierId,
  key /dmo/connection.connection_id   as ConnectionId,
      /dmo/connection.airport_from_id as AirportFromId,
      /dmo/connection.airport_to_id   as AirportToId,
      /dmo/connection.departure_time  as DepartureTime,
      /dmo/connection.arrival_time    as ArrivalTime,
      /dmo/connection.distance        as Distance,
      /dmo/connection.distance_unit   as DistanceUnit,
      _Flights

}
