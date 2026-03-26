@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DPL Item View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_DPL_Item
  as select from ztb_dpl_itm
  association to parent ZI_DPL_Header as _Header on $projection.dpl_uuid = _Header.dpl_uuid
{
  key item_uuid,
  dpl_uuid,
  
  contract_no,
  container_no,
  seal_no,
  msc_code,
  lot_no,
  case_no,
  part_no,
  part_desc_en,
  part_desc_ch,
  part_qty,
  
  piece_weight,
  net_weight,
  gross_weight,
  
  case_length,
  case_width,
  case_height,
  measurement_m3,
  packing_material,
  container_sn,
  
  material_no,
  pfi_number,
  po_number,
  po_line_no,
  ibd_no,
  grn_no,
  model_no,

  /* Association back to parent */
  _Header
}
