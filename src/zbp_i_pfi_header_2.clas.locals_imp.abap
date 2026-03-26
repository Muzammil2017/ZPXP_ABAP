CLASS lhc_PfiHeader DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR PfiHeader RESULT result.


ENDCLASS.

CLASS lhc_PfiHeader IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

*  METHOD setNumber.
*    DATA lt_pfi_header TYPE TABLE FOR UPDATE ZI_PFI_HEADER_2.
*    DATA lv_nr_result  TYPE cl_numberrange_runtime=>nr_number.
*
*    READ ENTITIES OF ZI_PFI_HEADER_2 IN LOCAL MODE
*      ENTITY PfiHeader
*        FIELDS ( PfiNumber )
*        WITH CORRESPONDING #( keys )
*      RESULT DATA(lt_entities).
*
*    LOOP AT lt_entities INTO DATA(ls_entity)
*      WHERE PfiNumber IS INITIAL.
*
*      TRY.
*          cl_numberrange_runtime=>number_get(
*            EXPORTING
*              nr_range_nr = '01'
*              object      = 'ZMMN_PFI'
*            IMPORTING
*              number      = lv_nr_result
*          ).
*        CATCH cx_number_ranges INTO DATA(lx_nr).
*          APPEND VALUE #(
*            %tky               = ls_entity-%tky
*            %msg               = lx_nr
*            %element-PfiNumber = if_abap_behv=>mk-on
*          ) TO reported-pfiheader.
*          CONTINUE.
*      ENDTRY.
*
*      APPEND VALUE #(
*        %tky      = ls_entity-%tky
*        PfiNumber = lv_nr_result
*      ) TO lt_pfi_header.
*
*    ENDLOOP.

*    MODIFY ENTITIES OF ZI_PFI_HEADER_2 IN LOCAL MODE
*      ENTITY PfiHeader
*        UPDATE FIELDS ( PfiNumber )
*        WITH lt_pfi_header
*      REPORTED DATA(lt_reported).
*
*  ENDMETHOD.

ENDCLASS.
