unit Common.AccurateTimer;

interface

procedure DelayMicSec(AMicSec: Int64 { ������������ }); inline;

procedure NtDelayExecution(Alertable: Boolean; Interval: PInt64); stdcall; external 'ntdll.dll';

implementation

procedure DelayMicSec(AMicSec: Int64 { ������������ });
var
  delay: Int64;
begin
  delay := -10 * AMicSec;
  NtDelayExecution(False, @delay);
end;

end.
