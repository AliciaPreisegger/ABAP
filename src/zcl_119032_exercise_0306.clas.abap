CLASS zcl_119032_exercise_0306 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_exercise_0306 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   Data customer TYPE table of ZC_119032_Travel_With_Customer.

  Select from ZC_119032_Travel_With_Customer
  Fields *
  Where CustomerId = '000001'
  into table @customer.

  if sy-subrc <> 0.
  out->write( |Keine Daten gefunden| ).
  return.
  endif.

  loop at customer into data(custom).
    out->write( |{ custom-BeginDate } - { custom-EndDate }: { custom-Description }| ).
  endloop.

  ENDMETHOD.
ENDCLASS.
