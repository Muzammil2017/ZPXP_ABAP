@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PFI Header Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PFI_HEADER
  as select from ztb_pfi_header
  composition [0..*] of ZI_PFI_ITEM as _Items
{
  key pfi_id                as PfiId,
      supplier_code         as SupplierCode,
      pfi_number            as PfiNumber,
      pfi_date              as PfiDate,
      pfi_validity_date     as PfiValidityDate,
      currency              as Currency,
      exchange_rate         as ExchangeRate,
      mode_of_shipment      as ModeOfShipment,
      inco_term             as IncoTerm,
      payment_term          as PaymentTerm,
      departure_date        as DepartureDate,
      arrival_date          as ArrivalDate,
      status                as Status,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _Items
}
