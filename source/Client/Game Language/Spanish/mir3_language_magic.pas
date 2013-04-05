(*******************************************************************
 *   LomCN Mir3 Spanish Magic Language LGU File 2013                *
 *                                                                 *
 *   Web       : http://www.lomcn.co.uk                            *
 *   Version   : 0.0.0.1                                           *
 *                                                                 *
 *   - File Info -                                                 *
 *                                                                 *
 *   It holds the mir3 Spanish language strings.                    *
 *                                                                 *
 *******************************************************************
 * Change History                                                  *
 *                                                                 *
 *  - 0.0.0.1 [2013-02-11] Elamo  : first init                      *
 *                                                                 *
 *                                                                 *
 *******************************************************************
 * :Info:                                                          *
 * The Maximum of String Literale is 255 so you need to add ' + '  *
 * at the end of 255 Char...                                       *
 * The String it self can have a length of 1024                    *
 *******************************************************************)

unit mir3_language_magic;

interface

uses Windows, SysUtils, Classes;

function GetMagicLine(): Integer; stdcall;
function GetMagicString(ID: Integer; Buffer: PChar): Integer; stdcall;

implementation

function GetMagicLine(): Integer; stdcall;
begin
  Result := 1;
end;

function GetMagicString(ID: Integer; Buffer: PChar): Integer; stdcall;
var
  Value : String;
begin
  case ID of
    (*******************************************************************
    *                  Magic  Informations strings                     *
    *******************************************************************)
    1: Value := 'Corrigeme en el fichero de idiomas';
    //...
  199: Value := '';
    else Value := 'No soportado';
  end;

  ////////////////////////////////////////////////////////////////////////////
  if Assigned(Buffer) then
    CopyMemory(Buffer, PChar(Value), Length(Value));
  Result := Length(Value);
end;
end.
