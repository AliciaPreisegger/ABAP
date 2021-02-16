CLASS zcl_119032_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_exercise_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Deklaration interne Tabelle
  DATA travels TYPE z119032_travels. "Tabellentyp

  "Einfügen von Datensätzen
  travels = VALUE #(
  ( travel_id = '23434345' description = 'Urlaub' begin_date = '20210408' end_date = '20210410' ) ).

  DATA travel1 TYPE z119032_travel.
  travel1-travel_id = 12345678.
  travel1-description = 'Sommerurlaub'.
  travel1-begin_date = '20210820'.
  travel1-end_date = '20210831'.

  DATA travel2 TYPE z119032_travel.
  travel2-travel_id = 3928.
  travel2-description = 'Skiurlaub'.
  travel2-begin_date = '20210201'.
  travel2-end_date = '20210205'.

  DATA travel3 TYPE z119032_travel.
  travel3-travel_id = 23493948.
  travel3-description = 'Städtetrip'.
  travel3-begin_date = '20210620'.
  travel3-end_date = '20210627'.

  DATA travel4 TYPE z119032_travel.
  travel4-travel_id = 23493948.
  travel4-description = 'Städtetrip'.

  travels = VALUE #( BASE travels "travels als Base verwenden, damit der 1. Datensatz mit description = Urlaub nicht überschrieben wird
  ( travel1 )
  ( travel2 )
  ( travel3 )
  ( travel4 )
  ).

  out->write( travels ).

  "Datensatz der 2. Reise ändern
  travels[ 2 ]-description = 'Sommer'.
  travels[ 2 ]-begin_date = '20210818'.
  out->write( travels ).

  "Löschen mehrerer Reisen
  DELETE travels WHERE description = 'Städtetrip'.
  out->write( travels ).

  "Ausgeben der Größe der internen Tabelle
  DATA(number_of_lines) = lines( travels ).
  out->write( lines( travels ) ).


  ENDMETHOD.
ENDCLASS.
