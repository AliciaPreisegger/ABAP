CLASS zcl_119032_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_exercise_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA travel TYPE /dmo/travel.
  data travel2 TYPE z119032_travel.

  travel = zcl_119032_flight=>get_latest_travel(  ).
  travel2 = CORRESPONDING #( travel ).

  out->write( |{ travel2-travel_id }| ).
  out->write( |{ travel2-description }| ).
  out->write( |{ travel2-begin_date }| ).
  out->write( |{ travel2-end_date }| ).



  ENDMETHOD.

ENDCLASS.
