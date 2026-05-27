CLASS lhc_ZEX_R_PUTAWAYEXCEPTIONHEAD DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zex_r_putawayexceptionheader RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zex_r_putawayexceptionheader RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zex_r_putawayexceptionheader.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zex_r_putawayexceptionheader.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zex_r_putawayexceptionheader.

    METHODS read FOR READ
      IMPORTING keys FOR READ zex_r_putawayexceptionheader RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zex_r_putawayexceptionheader.

    METHODS rba_Putawayexceptionitem FOR READ
      IMPORTING keys_rba FOR READ zex_r_putawayexceptionheader\_Putawayexceptionitem FULL result_requested RESULT result LINK association_links.

    METHODS cba_Putawayexceptionitem FOR MODIFY
      IMPORTING entities_cba FOR CREATE zex_r_putawayexceptionheader\_Putawayexceptionitem.

ENDCLASS.

CLASS lhc_ZEX_R_PUTAWAYEXCEPTIONHEAD IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Putawayexceptionitem.
  ENDMETHOD.

  METHOD cba_Putawayexceptionitem.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZEX_R_PUTAWAYEXCEPTIONITEM DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zex_r_putawayexceptionitem.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zex_r_putawayexceptionitem.

    METHODS read FOR READ
      IMPORTING keys FOR READ zex_r_putawayexceptionitem RESULT result.

    METHODS rba_Binreassignmenthistory FOR READ
      IMPORTING keys_rba FOR READ zex_r_putawayexceptionitem\_Binreassignmenthistory FULL result_requested RESULT result LINK association_links.

    METHODS rba_Putawayexceptionheader FOR READ
      IMPORTING keys_rba FOR READ zex_r_putawayexceptionitem\_Putawayexceptionheader FULL result_requested RESULT result LINK association_links.

    METHODS cba_Binreassignmenthistory FOR MODIFY
      IMPORTING entities_cba FOR CREATE zex_r_putawayexceptionitem\_Binreassignmenthistory.

ENDCLASS.

CLASS lhc_ZEX_R_PUTAWAYEXCEPTIONITEM IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Binreassignmenthistory.
  ENDMETHOD.

  METHOD rba_Putawayexceptionheader.
  ENDMETHOD.

  METHOD cba_Binreassignmenthistory.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZEX_R_BINREASSIGNMENTHISTO DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zex_r_binreassignmenthistory.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zex_r_binreassignmenthistory.

    METHODS read FOR READ
      IMPORTING keys FOR READ zex_r_binreassignmenthistory RESULT result.

    METHODS rba_Putawayexceptionheader FOR READ
      IMPORTING keys_rba FOR READ zex_r_binreassignmenthistory\_Putawayexceptionheader FULL result_requested RESULT result LINK association_links.

    METHODS rba_Putawayexceptionitem FOR READ
      IMPORTING keys_rba FOR READ zex_r_binreassignmenthistory\_Putawayexceptionitem FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZEX_R_BINREASSIGNMENTHISTO IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Putawayexceptionheader.
  ENDMETHOD.

  METHOD rba_Putawayexceptionitem.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZEX_R_PUTAWAYEXCEPTIONHEAD DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZEX_R_PUTAWAYEXCEPTIONHEAD IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
