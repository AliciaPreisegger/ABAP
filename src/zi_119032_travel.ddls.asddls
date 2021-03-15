@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel'
@Search.searchable: true //Allgemeines Suchfeld
@UI.headerInfo: {typeName: 'Travel', typeNamePlural: 'Travels'} //Tabellenüberschrift
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119032_Travel
   as select from /dmo/travel
{
  @UI.facet: [{ id: 'idIdentification',
      type: #IDENTIFICATION_REFERENCE,
      label: 'General Information', //General information in der Detailansicht über einzelne Positionen
      position: 10 }]

      @UI.lineItem: [{ position: 10 }] //Spalte positionieren und in der ganzen Übersicht hinzufügen
      @UI.selectionField: [{ position: 10 }] //Für Filteroptionen in der Kopfzeile
      @UI.identification: [{ position: 10 }] //Um Datensatz in der Detailansicht der einzelnen Positionen zu identifizieren
  key travel_id     as TravelId,
      @UI.lineItem: [{ position: 20 }]
      @UI.selectionField: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      description   as Description,
      @UI.lineItem: [{ position: 30 }]
      @UI.selectionField: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      agency_id     as AgencyId,
      @UI.identification: [{ position: 35 }]
      customer_id   as CustomerId,
      @UI.lineItem: [{ position: 40 }]
      @UI.selectionField: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5 //Genauigkeit im Suchfeld
      begin_date    as BeginDate,
      @UI.lineItem: [{ position: 50 }]
      @UI.selectionField: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      end_date      as EndDate,
      @UI.identification: [{ position: 60 }]
      @UI.lineItem: [{ position: 60 }]
      currency_code as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position: 70 }]
      booking_fee as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @UI.lineItem: [{ position: 80 }]
      @UI.identification: [{ position: 80 }]
      total_price as TotalPrice,
      status        as Status
}
where
  status <> 'C'

