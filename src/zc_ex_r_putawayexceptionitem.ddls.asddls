@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'ExceptionID', 'ItemNo' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZC_EX_R_PUTAWAYEXCEPTIONITEM
  as projection on ZEX_R_PUTAWAYEXCEPTIONITEM
  association [1..1] to ZEX_R_PUTAWAYEXCEPTIONITEM as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  @Endusertext: {
    Label: 'UUID', 
    Quickinfo: '16 Byte UUID in 16 Bytes (Raw Format)'
  }
  key UUID,
  @Endusertext: {
    Label: 'UUID', 
    Quickinfo: '16 Byte UUID in 16 Bytes (Raw Format)'
  }
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
  @Endusertext: {
    Label: 'Changed By', 
    Quickinfo: 'Last Changed By User'
  }
  @Semantics: {
    User.Lastchangedby: true
  }
  ResolvedBy,
  ResolvedAt,
  _BinReassignmentHistory : redirected to composition child ZC_EX_R_BINREASSIGNMENTHISTORY,
  _PutawayExceptionHeader : redirected to parent ZC_EX_R_PUTAWAYEXCEPTIONHEADER,
  _BaseEntity
}
