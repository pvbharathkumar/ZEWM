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
define root view entity ZC_EX_R_PUTAWAYEXCEPTIONHEADER
  provider contract TRANSACTIONAL_QUERY
  as projection on ZEX_R_PUTAWAYEXCEPTIONHEADER
  association [1..1] to ZEX_R_PUTAWAYEXCEPTIONHEADER as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  @Endusertext: {
    Label: 'UUID', 
    Quickinfo: '16 Byte UUID in 16 Bytes (Raw Format)'
  }
  key UUID,
  ExceptionID,
  WarehouseNo,
  InboundDelivery,
  @Endusertext: {
    Label: 'Airline ID', 
    Quickinfo: 'Flight Reference Scenario: Carrier ID'
  }
  Supplier,
  ExceptionType,
  Status,
  Priority,
  @Endusertext: {
    Label: 'Created By', 
    Quickinfo: 'Created By User'
  }
  @Semantics: {
    User.Createdby: true
  }
  AssignedSupervisor,
  @Endusertext: {
    Label: 'Time Stamp', 
    Quickinfo: 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  }
  ExpectedPutawayDt,
  @Endusertext: {
    Label: 'Time Stamp', 
    Quickinfo: 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  }
  ActualPutawayDt,
  @Endusertext: {
    Label: 'Truth Value', 
    Quickinfo: 'Truth Value: True/False'
  }
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
  @Endusertext: {
    Label: 'Created By', 
    Quickinfo: 'Created By User'
  }
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Endusertext: {
    Label: 'Created On', 
    Quickinfo: 'Creation Date Time'
  }
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Endusertext: {
    Label: 'Changed By', 
    Quickinfo: 'Local Instance Last Changed By User'
  }
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Endusertext: {
    Label: 'Changed On', 
    Quickinfo: 'Local Instance Last Change Date Time'
  }
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Endusertext: {
    Label: 'Changed On', 
    Quickinfo: 'Last Change Date Time'
  }
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _PutawayExceptionItem : redirected to composition child ZC_EX_R_PUTAWAYEXCEPTIONITEM,
  _BaseEntity
}
