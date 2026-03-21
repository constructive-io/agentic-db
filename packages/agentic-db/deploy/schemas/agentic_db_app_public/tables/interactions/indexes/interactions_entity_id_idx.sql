-- Deploy: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/entity_id/column


CREATE INDEX interactions_entity_id_idx ON "agentic_db_app_public".interactions USING BTREE ( entity_id );

