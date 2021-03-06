@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Exercise_0302'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119032_Travel_xt as select from ZI_119032_Travel {

key TravelId,
AgencyId,
CustomerId,
BeginDate,
EndDate,
CurrencyCode,
BookingFee,
TotalPrice,
@Semantics.amount.currencyCode: 'CurrencyCode'
cast(cast(TotalPrice as abap.dec( 16, 2 )) - cast(BookingFee as abap.dec(16,2)) as abap.curr(16,2)) as Price,
Description,
Status,
case Status
        when 'B' then 'Booked'
        when 'N' then 'New'
        when 'P' then 'Planned'
        else ''
      end                                                                                              as Status2
}
