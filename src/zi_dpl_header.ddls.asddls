@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DPL Header View'
define root view entity ZI_DPL_Header
  as select from ztb_dpl_hd
  composition [0..*] of ZI_DPL_Item as _Items
{
  key dpl_uuid,
  pfi_number,
  uploaded_by,
  created_at,
  _Items // Make items accessible
}
