CLASS zcl_119032_demo_0301 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119032_demo_0301 IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

"SELECT FROM <Datenbanktabelle/Datenbankview>
    " FIELDS <Spalte 1>, <Spalte 2>,...
    " WHERE <Bedingung>
    " ORDER BY <Sortierreihenfolge>
    " INTO @<Zielvariable>.
    "IF sy-subrc <> 0.
    "TODO: Fehlerbehandlung
    "ENDIF.

    DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.
    DATA connection_id TYPE /dmo/connection_id VALUE '0400'.
    DATA connection TYPE ZI_119032_Connection.
    DATA connections TYPE table OF ZI_119032_Connection.

    "Lesen eines Einzelsatzes
    SELECT SINGLE FROM ZI_119032_Connection
    FIELDS *
    WHERE CarrierId = @carrier_id and ConnectionId = @connection_id
    INTO @connection.
    if sy-subrc <> 0.
    "TODO: Fehlerbehandlung
    ENDIF.

    "Lesen mehrerer Datensätze
    SELECT FROM ZI_119032_Connection
    FIELDS *
    WHERE CarrierId = @carrier_id
    into TABLE @connections.
    if sy-subrc <> 0.
    "TODO: Fehlerbehandlung
    ENDIF.

ENDMETHOD.
ENDCLASS.
