@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Excel User'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZLAW_C_XL_User
  provider contract transactional_query
  as projection on ZLAW_I_XL_User
{
  key EndUser,
  key FileId,
      FileStatus,
      @Semantics.largeObject: { // LOB
        mimeType: 'Mimetype', // Points to your mime type field
        fileName: 'Filename', // Points to your fild name field
        acceptableMimeTypes: [ // File Types Acceptable
            'application/vnd.ms-excel',
            'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
        ],
        contentDispositionPreference: #INLINE // Directly shown in the browser
      }
      Attachment,
      Mimetype,
      Filename,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _ExcelData : redirected to composition child ZLAW_C_XL_Data
}
