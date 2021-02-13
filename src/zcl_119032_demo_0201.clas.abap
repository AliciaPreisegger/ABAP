CLASS zcl_119032_demo_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_demo_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Deklaration von Strukturen
  DATA connection TYPE z119032_connection.

  "Zugriff auf Strukturkomponenten
  connection-carrier_id = 'LH'.
  connection-carrier_id = '0400'.
  connection-airport_from_id = 'FRA'.
  connection-airport_to_id = 'JFK'.

  out->write( |Kürzel der Fluggesellschaft: { connection-carrier_id }| ).
  out->write( |Verbindungsnummer: { connection-connection_id }| ).
  out->write( |Startflughafen: { connection-airport_from_id }| ).
  out->write( |Zielflughafen: { connection-airport_to_id }| ).

  "Kopieren namensgleicher Strukturkomponenten
  DATA flight TYPE z119032_flight.
  flight-carrier_id = 'LH'.
  flight-connection_id = '0400'.
  flight-flight_date = cl_abap_context_info=>get_system_date( ).
  flight-price = 500.
  flight-currency_code = 'EUR'.
  flight-plane_type_id = 'A340-400'.

  DATA flight_xt TYPE z119032_flight_extended.
  flight_xt = CORRESPONDING #( connection ). "Kopiervorlage wird erstellt von connection
  flight_xt = CORRESPONDING #( Base ( flight_xt ) flight ). "Kopiervorlage wird mit Werten von flight überschrieben.

  ENDMETHOD.
ENDCLASS.
