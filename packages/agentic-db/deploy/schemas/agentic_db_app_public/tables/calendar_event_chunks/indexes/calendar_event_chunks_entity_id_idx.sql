-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_chunks/indexes/calendar_event_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/entity_id/column


CREATE INDEX calendar_event_chunks_entity_id_idx ON "agentic_db_app_public".calendar_event_chunks USING BTREE ( entity_id );

