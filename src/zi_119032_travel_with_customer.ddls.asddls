@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Exercise_0305'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119032_Travel_With_Customer as select from ZI_119032_Travel_xt as Travel_XT
association [1] to /dmo/customer as _customer
on Travel_XT.CustomerId = _customer.customer_id
{

key Travel_XT.TravelId,
Travel_XT.Description,
Travel_XT.CustomerId,
Travel_XT.BeginDate,
Travel_XT.EndDate,
Travel_XT.Price,
Travel_XT.BookingFee,
Travel_XT.TotalPrice,
Travel_XT.CurrencyCode,
Travel_XT.Status2,
_customer //Assoziation dem Verwender weitergeben (Exponieren)
    
}
