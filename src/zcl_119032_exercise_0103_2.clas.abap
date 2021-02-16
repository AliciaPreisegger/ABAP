CLASS zcl_119032_exercise_0103_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_exercise_0103_2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA old_String TYPE string value 'AeiouuuAAEEeeUUuooo'.
  DATA NewString TYPE String.

  newstring = replace( val = old_String sub = 'a' with = '1' occ = 0 ).
  newstring = replace( val = NewString sub = 'e' with = '2' occ = 0 ).
  newstring = replace( val = NewString sub = 'i' with = '3' occ = 0 ).
  newstring = replace( val = NewString sub = 'o' with = '4' occ = 0 ).
  newstring = replace( val = NewString sub = 'u' with = '5' occ = 0 ).

  out->write( |Alter Text: { old_String }| ).
  out->write( |Neuer Text: { NewString }| ).

  ENDMETHOD.
ENDCLASS.
