@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PFI Line Item Projection View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZC_PFI_ITEM
  as projection on ZI_PFI_ITEM
{
  key PfiId,
  key ItemNo,
      MaterialCode,
      MaterialDescription,
      HsCode,
      LotSize,
      LineQty,
      FobUnitPrice,
      Currency,
      TotalAmount,
      CreatedBy,
      CreatedAt,
      LastChangedAt,
      LocalLastChangedAt,
      _Header : redirected to parent ZC_PFI_HEADER
}
