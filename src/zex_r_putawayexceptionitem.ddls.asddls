@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'ExceptionID', 'ItemNo' ]
define view entity ZEX_R_PUTAWAYEXCEPTIONITEM
  as select from ZEX_PTWXCPTNITEM as PutawayExceptionItem
  association to parent ZEX_R_PUTAWAYEXCEPTIONHEADER as _PutawayExceptionHeader on $projection.ParentUuid = _PutawayExceptionHeader.Uuid
  composition [1..*] of ZEX_R_BINREASSIGNMENTHISTORY as _BinReassignmentHistory
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  exception_id as ExceptionID,
  item_no as ItemNo,
  product as Product,
  product_desc as ProductDesc,
  batch as Batch,
  handling_unit as HandlingUnit,
  source_bin as SourceBin,
  target_bin as TargetBin,
  exception_code as ExceptionCode,
  exception_text as ExceptionText,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  uom as UOM,
  @Semantics.quantity.unitOfMeasure: 'UOM'
  qty as Qty,
  severity as Severity,
  resolution_status as ResolutionStatus,
  @Semantics.user.lastChangedBy: true
  resolved_by as ResolvedBy,
  resolved_at as ResolvedAt,
  _BinReassignmentHistory,
  _PutawayExceptionHeader
}
