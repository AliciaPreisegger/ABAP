CLASS zcl_119032_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119032_DEMO_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Deklaration interner Tabellen
  DATA connections TYPE z119032_connections. "TYPE <Tabellentyp>
  DATA connections2 TYPE table of z119032_connection. "TYPE TABLE OF <Strukturtyp>

  "Einfügen von Datensätzen
  connections = VALUE #(
  ( carrier_id = 'LH' connection_id = '0400' airport_from_id = 'FRA' airport_to_id = 'JFK' )
  ( carrier_id = 'LH' connection_id = '0400' airport_from_id = 'FRA' airport_to_id = 'XYZ' )
  ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK' airport_to_id = 'FRA' )
  ).

  "Erweitern internen Tabellen
  DATA connection TYPE z119032_connection.
  connection-carrier_id = 'LH'.
  connection-connection_id = '0402'.
  connection-airport_from_id = 'FRA'.
  connection-airport_to_id = 'JFK'.

  connections = VALUE #( Base connections
  ( carrier_id = 'UA' connection_id = '3517' airport_from_id = 'JFK' airport_to_id = 'FRA' )
  ( connection ) ).

  out->write( connections ).

  "Lessen eines Einzelsatzes per...
  try.
  connection = connections[ 30 ]. "...Index
  CATCH cx_sy_itab_line_not_found INTO DATA(x).
  out->write( x->get_text( ) ).
  ENDTRY.

  if line_exists( connections[ carrier_id = 'XX' airport_from_id = 'FRA' ] ).
  connection = connections[ carrier_id = 'XX' airport_from_id = 'FRA' ]. "...Schlüssel
  ELSE.
  out->write( |Fehler: Zeile existiert nicht| ).
  ENDIF.

  "Lesen mehrerer Datensätze
  LOOP AT connections INTO connection WHERE carrier_id = 'LH'.
  out->write( |{ sy-tabix } - { connection-connection_id }| ). "Systemfeld sy-tabix um den Tabellenindex auszugeben
  ENDLOOP.

  out->write( connections ).

  "Ändern eines Einzelsatzes per...
  connections[ 3 ]-airport_to_id = 'BER'. "...Index
  connections[ carrier_id = 'UA' ]-airport_to_id = 'BER'. "...Schlüssel

  out->write( connections ).

  "Ändern mehrerer Datensätze
  "DATA connection2 TYPE REF TO z119032_connection.
  LOOP AT connections REFERENCE INTO DATA(connection2) WHERE carrier_id = 'LH'.
  connection2->airport_from_id = 'BER'.
  ENDLOOP.

  "out->write( connections ).

  "Sortieren interner Tabellen
  SORT connections by carrier_id ASCENDING connection_id DESCENDING airport_from_id ASCENDING airport_to_id ASCENDING.
  out->write( connections ).

  "Löschen eines Einzelsatzes
  DELETE connections INDEX 1.

  "Löschen mehrerer Datensätze
  DELETE connections WHERE carrier_id = 'LH'.

  "Größe von internen Tabellen
  DATA(number_of_lines) = lines( connections ).
  out->write( lines( connections ) ).

  ENDMETHOD.
ENDCLASS.
