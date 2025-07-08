@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Excel Data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZLAW_C_XL_Data
  as projection on ZLAW_I_XL_Data
{
  key EndUser,
  key FileId,
  key LineId,
  key LineNumber,
      PoNumber,
      PoItem,
      GrQuantity,
      UnitOfMeasure,
      SiteId,
      HeaderText,
      /* Associations */
      _ExcelUser : redirected to parent ZLAW_C_XL_User
}
