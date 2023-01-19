using from './catalog-service';

annotate CatalogService.ObjectType with @(
    UI: {
        Identification : [ {Value: description} ],
        SelectionFields : [description],
        LineItem  : [
            {Value: ID},
            {Value: objType},
            {Value: description},
            {Value: attribute.attribute_desc}
        ],
        HeaderInfo : {
            TypeName: '{i18n>objTypes}',
            TypeNamePlural: '{i18n>objType}',
            Title: {Value: description},
        }
    }
);

annotate CatalogService.ObjectType with{
    ID @title : '{i18n>ID}' @UI.HiddenFilter;
    objType @title: '{i18n>objType}' @UI.HiddenFilter;
    description @title: '{i18n>objType}';
    attribute @title: '{i18n>attribute}';
}

annotate CatalogService.ObjectAttribute with @(
    UI: {
        Identification : [ {Value: attribute_desc} ],
        SelectionFields : [attribute_desc],
        LineItem  : [
            {Value: ID},
            {Value: objType.description},
            {Value: attribute_desc},
            {Value: ControlType.CtrlType},
        ],
        HeaderInfo : {
            TypeName: '{i18n>objAttributes}',
            TypeNamePlural: '{i18n>objAttribute}',
            Title: {Value: objType.description},
        }
    }
);

annotate CatalogService.ObjectAttribute with{
    ID @title : '{i18n>ID}' @UI.HiddenFilter;
    attribute @title: '{i18n>objAttribute}' @UI.HiddenFilter;
    attribute_desc @title: '{i18n>attr_desc}';
    ControlType @title : '{i18n>ctrl_type}'
}

annotate CatalogService.ControlTypes with @(
    UI: {
        Identification : [ {Value: CtrlType} ],
        SelectionFields : [CtrlType],
        LineItem  : [
            {Value: CtrlType},
            {Value: input},
            {Value: selection},
            {Value: searchHelp},
        ],
        HeaderInfo : {
            TypeName: '{i18n>CtrlTypes}',
            TypeNamePlural: '{i18n>ctrl_type}',
            Title: {Value: inp_desc},
        }
    }
);

annotate CatalogService.ControlTypes with{
    ID @title : '{i18n>ID}' @UI.HiddenFilter;
    CtrlType @title: '{i18n>ctrl_type}' @UI.HiddenFilter;
    input @title: '{i18n>input}'; 
    selection @title: '{i18n>selection}';
    searchHelp @title: '{i18n>searchHelp}';
}
