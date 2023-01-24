using moa.object as moa from '../db/schema';

service CatalogService {
    @Capabilities : { Insertable: true, Updatable: true, Deletable: true }
    entity TipoOggetti as projection on moa.TipoOggetti; 
    entity AttributiOggetto as projection on moa.AttributiOggetto;
    entity ControlTypes as projection on moa.controlTypes;
}