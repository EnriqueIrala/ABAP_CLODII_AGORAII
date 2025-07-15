CLASS zcl_tier1_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tier1_c326 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT FROM I_country
    FIELDS *
    INTO TABLE @DATA(lt_contry)
    UP TO 6 ROWS.

    IF sy-subrc = 0.
      out->write( lt_contry ).
    ENDIF..

  ENDMETHOD.

ENDCLASS.
