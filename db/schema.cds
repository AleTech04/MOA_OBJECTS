namespace moa.object;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity TipoOggetti
{
    key objType : String(3);
    description : String;
    attribute : Association to one AttributiOggetto;
}

entity AttributiOggetto
{
    key ID : Integer;
    attribute_desc : String;
}

entity controlTypes
{
    key CtrlType : Integer;
    input : Boolean;
    inp_desc : String;
    selection : Boolean;
    sel_desc : String;
    searchHelp : Boolean;
    she_desc : String;
}
