@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 4: SQL Functions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119032_SQLFunctions as select from /dmo/connection {

abs(-5) as Abs1, //Betrag
division(distance,2,2) as division1, //Dezimalzahl mit Nachkommastellen (Dividend, Divisor, Nachkommatellen)
concat_with_space('Hallo', 'Welt', 1) as ConcatWithSpace, //Wörter verbinden mit Leerzeichen
replace('Hallo', 'allo', 'lloa') as Replace1, //Buchstabe oder Wort durch ein anderes ersetzen
distance as OldDistance,
distance_unit as OldDistanceUnit,
@Semantics.quantity.unitOfMeasure: 'NewDistanceUnit'
unit_conversion(quantity => distance, source_unit => distance_unit, target_unit => cast('MI' as abap.unit)) as NewDistance,
cast('MI' as abap.unit) as NewDistanceUnit, //Die unit in die umgewandelt werden soll
//Eine Größe mit einer bestimmten Einheit wird in eine neue Größe umgerechnet (Menge, Ursprungseinheit, Zieleinheit)
dats_days_between('20210101', '20210302') as DatsDaysBetween1,
tstmp_current_utctimestamp() as TstmpCurrentUtcTimeStamp1
    
}
