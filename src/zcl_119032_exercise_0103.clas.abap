CLASS zcl_119032_exercise_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_exercise_0103 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA old_String TYPE string value 'Aeiou'.
  DATA NewString TYPE String.
  newstring = old_String.

  "Vertauschen durch Mehrfachverzweigung: (a=1, e=2, i=3, o=4, u=5)
  out->write( |Alter String: | && old_String ).

  old_String = find( val = old_String sub = 'a' ).
  newstring = replace( val = newstring sub = 'a' with = '1' ).
  old_String =  find( val = old_String sub = 'e' ).
  newstring = replace( val = newstring sub = 'e' with = '2' ).
  old_String =  find( val = old_String sub = 'i' ).
  newstring = replace( val = newstring sub = 'i' with = '3' ).
  old_String =  find( val = old_String sub = 'o' ).
  newstring = replace( val = newstring sub = 'o' with = '4' ).
  old_String =  find( val = old_String sub = 'u' ).
  newstring = replace( val = newstring sub = 'u' with = '5' ).

  out->write( |Neuer String: | && newstring ).

  ENDMETHOD.
ENDCLASS.
