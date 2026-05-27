@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'ExceptionID', 'ItemNo' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZC_EX_R_BINREASSIGNMENTHISTORY
  as projection on ZEX_R_BINREASSIGNMENTHISTORY
  association [1..1] to ZEX_R_BINREASSIGNMENTHISTORY as _BaseEntity on $projection.UUID = _BaseEntity.UUID
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
  @Endusertext: {
    Label: 'UUID', 
    Quickinfo: '16 Byte UUID in 16 Bytes (Raw Format)'
  }
  RootUUID,
  ExceptionID,
  ItemNo,
  OldBin,
  NewBin,
  ReasonCode,
  @Endusertext: {
    Label: 'Changed By', 
    Quickinfo: 'Last Changed By User'
  }
  @Semantics: {
    User.Lastchangedby: true
  }
  ReassignedBy,
  ReassignedAt,
  _PutawayExceptionHeader : redirected to ZC_EX_R_PUTAWAYEXCEPTIONHEADER,
  _PutawayExceptionItem : redirected to parent ZC_EX_R_PUTAWAYEXCEPTIONITEM,
  _BaseEntity
}
