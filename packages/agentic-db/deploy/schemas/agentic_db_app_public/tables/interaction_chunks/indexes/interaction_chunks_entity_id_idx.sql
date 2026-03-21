-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/entity_id/column


CREATE INDEX interaction_chunks_entity_id_idx ON "agentic_db_app_public".interaction_chunks USING BTREE ( entity_id );

