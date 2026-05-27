@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'ExceptionID', 'ItemNo' ]
define view entity ZEX_R_BINREASSIGNMENTHISTORY
  as select from ZEX_BNRSSGNMNTHS as BinReassignmentHistory
  association to parent ZEX_R_PUTAWAYEXCEPTIONITEM as _PutawayExceptionItem on $projection.ParentUuid = _PutawayExceptionItem.Uuid
  association [1..1] to ZEX_R_PUTAWAYEXCEPTIONHEADER as _PutawayExceptionHeader on $projection.RootUuid = _PutawayExceptionHeader.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  root_uuid as RootUUID,
  exception_id as ExceptionID,
  item_no as ItemNo,
  old_bin as OldBin,
  new_bin as NewBin,
  reason_code as ReasonCode,
  @Semantics.user.lastChangedBy: true
  reassigned_by as ReassignedBy,
  reassigned_at as ReassignedAt,
  _PutawayExceptionItem,
  _PutawayExceptionHeader
}
