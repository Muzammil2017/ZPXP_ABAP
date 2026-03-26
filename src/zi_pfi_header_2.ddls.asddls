@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PFI Header Interface View'

define root view entity  ZI_PFI_HEADER_2
  as select from zmm_pfi_header as Header

  association [0..1] to ZSUPPLIER_CDS as _Supplier
    on $projection.Supplier = _Supplier.Supplier
    
  composition [0..*] of ZI_PFI_ITEM_2 as _Item  

{
  key Header.pfi_number            as PfiNumber,
      Header.supplier              as Supplier,
      Header.currency              as Currency,
      Header.status                as Status,
      Header.quotation_no          as QuotationNo,
      Header.pfi_date              as PfiDate,
      Header.pfi_offer_validity    as PfiOfferValidity,
      Header.rate_type             as RateType,
      Header.forex_rate            as ForexRate,
      Header.rate_date             as RateDate,
      Header.payment_term          as PaymentTerm,
      Header.mode_of_shipment      as ModeOfShipment,
      Header.inco_term             as IncoTerm,
      Header.departure_date        as DepartureDate,
      Header.arrival_date          as ArrivalDate,
      Header.port_of_loading       as PortOfLoading,
      Header.port_of_discharge     as PortOfDischarge,
      Header.nature_of_shipment    as NatureOfShipment,
      Header.created_by            as CreatedBy,
      Header.created_at            as CreatedAt,
      Header.changed_by            as ChangedBy,
      Header.changed_at            as ChangedAt,
      Header.local_last_changed_at as LocalLastChangedAt,

      /* Associations */
      _Supplier,
      _Item
      
}

