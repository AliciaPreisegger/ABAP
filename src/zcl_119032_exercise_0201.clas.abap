CLASS zcl_119032_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119032_EXERCISE_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA travel TYPE /dmo/travel.
  data travel2 TYPE z119032_travel.

  travel = zcl_119032_flight=>get_latest_travel(  ). "Methode aufrufen
  travel2 = CORRESPONDING #( travel ). "Namensgleiche Komponenten von travel2 in travel kopieren, nicht aber überschreiben

  out->write( |Reisenummer: { travel2-travel_id }| ).
  out->write( |Reisebeschreibung: { travel2-description }| ).
  out->write( |Beginn der Reise: { travel2-begin_date }| ).
  out->write( |Ende der Reise: { travel2-end_date }| ).



  ENDMETHOD.
ENDCLASS.
