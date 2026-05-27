@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZEX_InboundPutawayException', 
  Semantickey: [ 'ExceptionID', 'WarehouseNo' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZEX_C_PUTAWAYEXCEPTIONHEADER
  provider contract TRANSACTIONAL_QUERY
  as projection on ZEX_R_PUTAWAYEXCEPTIONHEADER
  association [1..1] to ZEX_R_PUTAWAYEXCEPTIONHEADER as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ExceptionID,
  WarehouseNo,
  InboundDelivery,
  Supplier,
  ExceptionType,
  Status,
  Priority,
  @Semantics: {
    User.Createdby: true
  }
  AssignedSupervisor,
  ExpectedPutawayDt,
  ActualPutawayDt,
  EscalationFlag,
  Comments,
  TotalItems,
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
  TotalQty,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _PutawayExceptionItem : redirected to composition child ZEX_C_PUTAWAYEXCEPTIONITEM,
  _BaseEntity
}
