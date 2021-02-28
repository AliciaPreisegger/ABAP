CLASS zcl_119032_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119032_DEMO_0104 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.
  DATA flight_date TYPE /dmo/flight_date VALUE '20210212'.
  DATA is_fulfilled TYPE c LENGTH 1.

  "Einfachverzweigung
  if not ( flight_date >= '20210101' and flight_date <= '20211231' )
    OR carrier_id <> 'LH'.
    is_fulfilled = 'X'.
  ELSE.
    is_fulfilled = ''.
  ENDIF.

  IF is_fulfilled is not INITIAL.
    out->write( |Bedingung erfüllt| ).
  ENDIF.

  "Mehrfachverzweigung
  CASE carrier_id.
    WHEN 'LH' OR 'lh' OR 'Lh' OR 'lH'.
     out->write( |Lufthansa| ).
    WHEN 'BA'.
     out->write( |British Airways| ).
    WHEN OTHERS.
     out->write( |Sonstiges| ).
  ENDCASE.

  ENDMETHOD.
ENDCLASS.
