@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'ExceptionID', 'ItemNo' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZEX_C_PUTAWAYEXCEPTIONITEM
  as projection on ZEX_R_PUTAWAYEXCEPTIONITEM
  association [1..1] to ZEX_R_PUTAWAYEXCEPTIONITEM as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  ExceptionID,
  ItemNo,
  Product,
  ProductDesc,
  Batch,
  HandlingUnit,
  SourceBin,
  TargetBin,
  ExceptionCode,
  ExceptionText,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  UOM,
  @Semantics: {
    Quantity.Unitofmeasure: 'UOM'
  }
  Qty,
  Severity,
  ResolutionStatus,
  @Semantics: {
    User.Lastchangedby: true
  }
  ResolvedBy,
  ResolvedAt,
  _BinReassignmentHistory : redirected to composition child ZEX_C_BINREASSIGNMENTHISTORY,
  _PutawayExceptionHeader : redirected to parent ZEX_C_PUTAWAYEXCEPTIONHEADER,
  _BaseEntity
}
