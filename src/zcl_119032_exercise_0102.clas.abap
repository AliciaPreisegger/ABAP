CLASS zcl_119032_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_exercise_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Taschenrechner mit Case-When
  DATA operand1 TYPE p LENGTH 16 DECIMALS 2 VALUE '5.25'.
  DATA operand2 TYPE p LENGTH 16 DECIMALS 2 VALUE '7.5'.
  DATA operator TYPE c LENGTH 3 VALUE 'xx'.
  DATA result TYPE p LENGTH 16 DECIMALS 2.
  CASE operator.
  WHEN '+'.
  result = operand1 + operand2.
  out->write( |Ergebnis der Addition: | && result ).
  WHEN '-'.
  result = operand1 - operand2.
  out->write( |Ergebnis der Subtraktion: | && result ).
  WHEN '*'.
  result = operand1 * operand2.
  out->write( |Ergebnis der Multiplikation: | && result ).
  WHEN '/'.
  result = operand1 / operand2.
  out->write( |Ergebnis der Division: | && result ).
  WHEN 'min'.
  result = nmin( val1 = '5.25' val2 = '7.5' ).
  out->write( |Ergebnis des Minimalwertes: | && result ).
  ENDCASE.

  "Taschenrechner mit If-Else
  IF ( operator = '+' ).
  result = operand1 + operand2.
  out->write( |Ergebnis der Addition: | && result ).
  ELSEIF ( operator = '-' ).
  result = operand1 - operand2.
  out->write( |Ergebnis der Subtraktion: | && result ).
  ELSEIF ( operator = '*' ).
  result = operand1 * operand2.
  out->write( |Ergebnis der Multiplikation: | && result ).
  ELSEIF ( operator = '/' ).
  result = operand1 / operand2.
  out->write( |Ergebnis der Division: | && result ).
  Else.
  out->write( |Ergebnis des Minimalwertes: | && result ).
  ENDIF.

  ENDMETHOD.
ENDCLASS.
