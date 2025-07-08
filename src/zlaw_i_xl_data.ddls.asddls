@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Excel Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZLAW_I_XL_Data
  as select from zlaw_xl_data
  association to parent ZLAW_I_XL_User as _ExcelUser on  $projection.EndUser = _ExcelUser.EndUser
                                                     and $projection.FileId  = _ExcelUser.FileId
{
  key end_user        as EndUser,
  key file_id         as FileId,
  key line_id         as LineId,
  key line_no         as LineNumber,
      po_number       as PoNumber,
      po_item         as PoItem,
      gr_quantity     as GrQuantity,
      unit_of_measure as UnitOfMeasure,
      site_id         as SiteId,
      header_text     as HeaderText,

      /* Exposed Association */
      _ExcelUser
}
