using moa.object as moa from '../db/schema';

service CatalogService {
    @Capabilities : { Insertable: true, Updatable: true, Deletable: true }
    entity ObjectType as projection on moa.ObjectType; 
    entity ObjectAttribute as projection on moa.ObjectAttribute;
    entity ControlTypes as projection on moa.ControlTypes;
}