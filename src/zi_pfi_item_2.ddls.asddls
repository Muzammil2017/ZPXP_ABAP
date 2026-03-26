@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PFI Item Interface View'

define view entity ZI_PFI_ITEM_2
  as select from zmm_pfi_item as Item

  association to parent ZI_PFI_HEADER_2 as _Header
    on $projection.PfiNumber = _Header.PfiNumber
{
  key Item.pfi_number            as PfiNumber,
  key Item.item_no               as ItemNo,
      Item.material_code         as MaterialCode,
      Item.item_description      as ItemDescription,
      Item.hs_code               as HsCode,
      Item.model_name            as ModelName,
      Item.lot_size              as LotSize,
      Item.price_per_unit        as PricePerUnit,
      Item.line_qty              as LineQty,
      Item.no_of_po              as NoOfPo,
      Item.total_amount          as TotalAmount,
      Item.created_by            as CreatedBy,
      Item.created_at            as CreatedAt,
      Item.changed_by            as ChangedBy,
      Item.changed_at            as ChangedAt,
      Item.local_last_changed_at as LocalLastChangedAt,

      /* Associations */
      _Header
}
