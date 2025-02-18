library libsystem;

uses
  System.SysUtils,
  System.Classes,
  uValidador in 'uValidador.pas';

{$R *.res}

function RegisterSystem(Token: String): Boolean; stdcall;
begin
  Result := ValidarToken(Token);
end;

function RegisterDate(Date: String): Boolean; stdcall;
begin
  Result := ValidarDate(Date);
end;

function RegisterAcess(User, Password: String): Boolean; stdcall;
begin
  Result := ValidarMaster(User, Password);
end;

exports
  RegisterSystem,
  RegisterDate,
  RegisterAcess;


end.
