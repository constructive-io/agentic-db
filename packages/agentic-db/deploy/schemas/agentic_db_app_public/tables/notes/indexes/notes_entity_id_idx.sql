-- Deploy: schemas/agentic_db_app_public/tables/notes/indexes/notes_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_location_gist_idx


CREATE INDEX notes_entity_id_idx ON agentic_db_app_public.notes USING BTREE ( entity_id );

