@AbapCatalog.sqlViewName: 'ZTEST_SUPPLIER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Supplier CDS view'
@Metadata.ignorePropagatedAnnotations: true
define view ZSUPPLIER_CDS  
 as select from I_BusinessPartnerSupplier
{
  key Supplier,
      BusinessPartner,
      SupplierAccountGroup,
      PostingIsBlocked,
      PurchasingIsBlocked,
      DeletionIndicator
}
