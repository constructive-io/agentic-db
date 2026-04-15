-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/indexes/events_chunks_events_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/events_chunks/columns/events_id/column


CREATE INDEX events_chunks_events_id_idx ON "agentic_db_app_public".events_chunks USING BTREE ( events_id );

