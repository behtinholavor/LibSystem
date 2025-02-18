unit uValidador;

interface

uses
  System.Classes,
  SysUtils;

function ValidarToken(Token: string): Boolean;
function ValidarDate(Date: string): Boolean;
function ValidarMaster(User, Password: String): Boolean;

implementation

var
  TokenAuth: TStringList;
  AUser, APassword: String;

function ValidarToken(Token: string): Boolean;
begin
  Result := TokenAuth.IndexOf(Token) > 0;
end;

function ValidarDate(Date: string): Boolean;
var
  maxDate, sysDate: TDateTime;
begin
  maxDate := StrToDate('31' + '/' + '03' + '/' + '2019');
  sysDate := StrToDate(Copy(Date, 1, 2) + '/' + Copy(Date, 3, 2) + '/' + Copy(Date, 5, 4) );
  Result := sysDate <= maxDate;
end;

function ValidarMaster(User, Password: String): Boolean;
begin
  Result := (User = AUser) and (Password = APassword);
end;

initialization
begin
  TokenAuth := TStringList.Create;
  TokenAuth.Add('014bef6c-5c96-42dc-8372-602fb7f713e7');
  TokenAuth.Add('093ba48d-85e6-484d-8d43-a0be23b39985');
  TokenAuth.Add('e73995cd-92e5-4723-8a5b-8c3c1a97f2d4');
  TokenAuth.Add('a0c626bf-9e95-40f8-91e8-1164e259749f');
  TokenAuth.Add('69c5f101-4d53-471f-a278-0ce31df55ffa');
  AUser     := 'root';
  APassword := '1q2w3e';
end;

//finalization
//  Lista.Free;

end.
