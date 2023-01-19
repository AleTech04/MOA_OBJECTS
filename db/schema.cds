namespace moa.object;

using {cuid, managed} from '@sap/cds/common';

entity objectType: cuid {
    objType: String(3);
    description: String;
    attribute: Association to many objectAttribute on attribute.attribute = $self;
}

entity objectAttribute: cuid {
    attribute: Association to objectType;
    attribute_desc: String;
    ControlType: Association to controlTypes
}

entity controlTypes {
    key CtrlType: Integer;
    input: Boolean;
    inp_desc:String;
    selection: Boolean;
    sel_desc:String;
    searchHelp: Boolean;
    she_desc:String;
}
