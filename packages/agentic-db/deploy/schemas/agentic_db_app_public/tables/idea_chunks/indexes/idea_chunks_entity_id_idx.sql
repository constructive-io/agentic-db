-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/entity_id/column


CREATE INDEX idea_chunks_entity_id_idx ON agentic_db_app_public.idea_chunks USING BTREE ( entity_id );

