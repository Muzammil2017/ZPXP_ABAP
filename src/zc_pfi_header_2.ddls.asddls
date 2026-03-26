@EndUserText.label: 'PFI Header Consumption View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define root view entity ZC_PFI_HEADER_2
  as projection on ZI_PFI_HEADER_2
{
  key PfiNumber,

      @Consumption.valueHelpDefinition: [{
        entity: {
          name:    'ZSUPPLIER_CDS',
          element: 'Supplier'
        }
      }]
      @UI.lineItem:       [{ position: 10, label: 'Supplier' }]
      @UI.identification: [{ position: 10, label: 'Supplier' }]
      Supplier,

      @UI.lineItem:       [{ position: 20, label: 'Currency' }]
      @UI.identification: [{ position: 20, label: 'Currency' }]
      Currency,

      @UI.lineItem:       [{ position: 30, label: 'Status' }]
      @UI.identification: [{ position: 30, label: 'Status' }]
      Status,

      @UI.identification: [{ position: 40, label: 'Quotation No' }]
      QuotationNo,

      @UI.identification: [{ position: 50, label: 'PFI Date' }]
      PfiDate,

      @UI.identification: [{ position: 60, label: 'Offer Validity' }]
      PfiOfferValidity,

      @UI.identification: [{ position: 70, label: 'Rate Type' }]
      RateType,

      @UI.identification: [{ position: 80, label: 'Forex Rate' }]
      ForexRate,

      @UI.identification: [{ position: 90, label: 'Rate Date' }]
      RateDate,

      @UI.identification: [{ position: 100, label: 'Payment Term' }]
      PaymentTerm,

      @UI.identification: [{ position: 110, label: 'Mode of Shipment' }]
      ModeOfShipment,

      @UI.identification: [{ position: 120, label: 'Inco Term' }]
      IncoTerm,

      @UI.identification: [{ position: 130, label: 'Departure Date' }]
      DepartureDate,

      @UI.identification: [{ position: 140, label: 'Arrival Date' }]
      ArrivalDate,

      @UI.identification: [{ position: 150, label: 'Port of Loading' }]
      PortOfLoading,

      @UI.identification: [{ position: 160, label: 'Port of Discharge' }]
      PortOfDischarge,

      @UI.identification: [{ position: 170, label: 'Nature of Shipment' }]
      NatureOfShipment,

      CreatedBy,
      CreatedAt,
      ChangedBy,
      ChangedAt,
      LocalLastChangedAt,

      /* Associations */
      _Supplier,
      _Item : redirected to composition child ZC_PFI_ITEM_2
}
