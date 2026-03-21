-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


CREATE INDEX venues_entity_id_idx ON "agentic_db_app_public".venues USING BTREE ( entity_id );

