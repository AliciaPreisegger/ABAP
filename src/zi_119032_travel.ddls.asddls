@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119032_Travel
   as select from /dmo/travel
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      currency_code as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price as TotalPrice,
      description   as Description,
      status        as Status
}
where
  status <> 'C'

