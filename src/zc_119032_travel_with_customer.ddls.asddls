@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Exercise_0305'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119032_Travel_With_Customer as select from ZI_119032_Travel_With_Customer 

{

key TravelId,
Description,
CustomerId,
_customer.first_name as CustomerFirstName, //Customer Daten nutzen --> Was möchte ich mit den Daten machen
_customer.last_name as CustomerLastName,
BeginDate,
EndDate,
Price,
BookingFee,
TotalPrice,
CurrencyCode,
Status2
/* Associations 
_customer */

//Darauf aufbauend könnten UI's definiert werden um ein Web Service aufzubauen
    
}
