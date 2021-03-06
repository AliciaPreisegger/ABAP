@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Exercise_0304'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119032_Travel_By_Customer as select from ZI_119032_Travel_by_customer {

CustomerId as CustomerID,
count(*) as NumberOfTravels, //Anzahl der Reisen insgesamt
@Semantics.amount.currencyCode: 'CurrencyCode' //Neue Spalte wird definiert, deswegen braucht man Annotation
sum(TotalPrice) as TotalExpenses, 
CurrencyCode
    
}

group by
CustomerId,
CurrencyCode

having
count(*) > 10
