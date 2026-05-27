@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZEX_InboundPutawayException'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'ExceptionID', 'WarehouseNo' ]
define root view entity ZEX_R_PUTAWAYEXCEPTIONHEADER
  as select from ZEX_PTWXCPTNHDER as PutawayExceptionHeader
  composition [1..*] of ZEX_R_PUTAWAYEXCEPTIONITEM as _PutawayExceptionItem
{
  key uuid as UUID,
  exception_id as ExceptionID,
  warehouse_no as WarehouseNo,
  inbound_delivery as InboundDelivery,
  supplier as Supplier,
  exception_type as ExceptionType,
  status as Status,
  priority as Priority,
  @Semantics.user.createdBy: true
  assigned_supervisor as AssignedSupervisor,
  expected_putaway_dt as ExpectedPutawayDt,
  actual_putaway_dt as ActualPutawayDt,
  escalation_flag as EscalationFlag,
  comments as Comments,
  total_items as TotalItems,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  uom as UOM,
  @Semantics.quantity.unitOfMeasure: 'UOM'
  total_qty as TotalQty,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  _PutawayExceptionItem
}
