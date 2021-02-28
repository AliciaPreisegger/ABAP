CLASS zcl_119032_exercise_0203 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119032_EXERCISE_0203 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA travel TYPE z119032_travel.
  DATA travel2 TYPE ref to /dmo/travel_data.
  DATA travels TYPE z119032_travels.

  travels = zcl_219000_flight=>get_all_travels( ).
  "Alternativ Inline-Deklaration: data(travels) = zcl_219000_flight=>get_all_travels( ). --> dann muss kein Datentyp deklariert werden


  SORT travels by begin_date ascending.

  out->write( travels ).

  ENDMETHOD.
ENDCLASS.
