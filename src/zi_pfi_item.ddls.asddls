@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PFI Line Item Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PFI_ITEM
  as select from ztb_pfi_item
  association to parent ZI_PFI_HEADER as _Header
    on $projection.PfiId = _Header.PfiId
{
  key pfi_id                as PfiId,
  key item_no               as ItemNo,
      material_code         as MaterialCode,
      material_description  as MaterialDescription,
      hs_code               as HsCode,
      lot_size              as LotSize,
      line_qty              as LineQty,
      fob_unit_price        as FobUnitPrice,
      currency              as Currency,
      total_amount          as TotalAmount,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _Header
}
