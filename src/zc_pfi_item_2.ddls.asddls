@EndUserText.label: 'PFI Item Consumption View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define view entity ZC_PFI_ITEM_2
  as projection on ZI_PFI_ITEM_2
{
  key PfiNumber,
  key ItemNo,

      @UI.lineItem:       [{ position: 10, label: 'Material Code' }]
      @UI.identification: [{ position: 10, label: 'Material Code' }]
      MaterialCode,

      @UI.lineItem:       [{ position: 20, label: 'Description' }]
      @UI.identification: [{ position: 20, label: 'Description' }]
      ItemDescription,

      @UI.identification: [{ position: 30, label: 'HS Code' }]
      HsCode,

      @UI.identification: [{ position: 40, label: 'Model Name' }]
      ModelName,

      @UI.identification: [{ position: 50, label: 'Lot Size' }]
      LotSize,

      @UI.identification: [{ position: 60, label: 'Price Per Unit' }]
      PricePerUnit,

      @UI.identification: [{ position: 70, label: 'Line Qty' }]
      LineQty,

      @UI.identification: [{ position: 80, label: 'No of PO' }]
      NoOfPo,

      @UI.identification: [{ position: 90, label: 'Total Amount' }]
      TotalAmount,

      CreatedBy,
      CreatedAt,
      ChangedBy,
      ChangedAt,
      LocalLastChangedAt,

      /* Associations */
      _Header : redirected to parent ZC_PFI_HEADER_2
}
