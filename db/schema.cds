namespace moa.object;

using {cuid, managed} from '@sap/cds/common';

entity ObjectAttribute: cuid {
    attribute: Association to ObjectType;
    attribute_desc: String;
    ControlType: Association to ControlTypes
}

entity ObjectType: cuid {
    objType: String(3);
    description: String;
    attribute: Association to many ObjectAttribute;
}

entity ControlTypes {
    key CtrlType: Integer;
    input: Boolean;
    inp_desc:String;
    selection: Boolean;
    sel_desc:String;
    searchHelp: Boolean;
    she_desc:String;
}
