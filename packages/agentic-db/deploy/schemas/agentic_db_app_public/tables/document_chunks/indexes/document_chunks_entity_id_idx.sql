-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/indexes/document_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/embedding/column


CREATE INDEX document_chunks_entity_id_idx ON "agentic_db_app_public".document_chunks USING BTREE ( entity_id );

