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

  DATA word TYPE string value 'Halloe'.
  DATA NewString TYPE String.

  "Vertauschen durch Mehrfachverzweigung: (a=1, e=2, i=3, o=4, u=5)
  out->write( |Alter String: | && word ).
  word = find( val = word sub = 'a' ).
  word = replace( val = word sub = 'a' with = '1' ).
  word =  find( val = word sub = 'e' ).
  word = replace( val = word sub = 'e' with = '2' ).
  word =  find( val = word sub = 'i' ).
  word = replace( val = word sub = 'i' with = '3' ).
  word =  find( val = word sub = 'o' ).
  word = replace( val = word sub = 'o' with = '4' ).
  word =  find( val = word sub = 'u' ).
  word = replace( val = word sub = 'u' with = '5' ).


  out->write( |Neuer String: | && word ).

  ENDMETHOD.
ENDCLASS.
