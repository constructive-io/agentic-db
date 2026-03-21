-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/indexes/list_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/embedding/column


CREATE INDEX list_chunks_entity_id_idx ON "agentic_db_app_public".list_chunks USING BTREE ( entity_id );

