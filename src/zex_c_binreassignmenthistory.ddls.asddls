@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'ExceptionID', 'ItemNo' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZEX_C_BINREASSIGNMENTHISTORY
  as projection on ZEX_R_BINREASSIGNMENTHISTORY
  association [1..1] to ZEX_R_BINREASSIGNMENTHISTORY as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  RootUUID,
  ExceptionID,
  ItemNo,
  OldBin,
  NewBin,
  ReasonCode,
  @Semantics: {
    User.Lastchangedby: true
  }
  ReassignedBy,
  ReassignedAt,
  _PutawayExceptionItem : redirected to parent ZEX_C_PUTAWAYEXCEPTIONITEM,
  _PutawayExceptionHeader : redirected to ZEX_C_PUTAWAYEXCEPTIONHEADER,
  _BaseEntity
}
