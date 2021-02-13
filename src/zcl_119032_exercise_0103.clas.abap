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

  DATA word TYPE string value 'Aeiou'.
  DATA NewString TYPE String.
  newstring = word.

  "Vertauschen durch Mehrfachverzweigung: (a=1, e=2, i=3, o=4, u=5)
  out->write( |Alter String: | && word ).

  word = find( val = word sub = 'a' ).
  newstring = replace( val = newstring sub = 'a' with = '1' ).
  word =  find( val = word sub = 'e' ).
  newstring = replace( val = newstring sub = 'e' with = '2' ).
  word =  find( val = word sub = 'i' ).
  newstring = replace( val = newstring sub = 'i' with = '3' ).
  word =  find( val = word sub = 'o' ).
  newstring = replace( val = newstring sub = 'o' with = '4' ).
  word =  find( val = word sub = 'u' ).
  newstring = replace( val = newstring sub = 'u' with = '5' ).

  out->write( |Neuer String: | && newstring ).

  ENDMETHOD.
ENDCLASS.
