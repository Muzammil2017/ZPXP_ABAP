@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PFI Header Projection View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_PFI_HEADER
  provider contract transactional_query
  as projection on ZI_PFI_HEADER
{
  key PfiId,
      SupplierCode,
      PfiNumber,
      PfiDate,
      PfiValidityDate,
      Currency,
      ExchangeRate,
      ModeOfShipment,
      IncoTerm,
      PaymentTerm,
      DepartureDate,
      ArrivalDate,
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedAt,
      LocalLastChangedAt,
      _Items : redirected to composition child ZC_PFI_ITEM
}
