-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/indexes/event_chunks_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/event_id/column
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_deal_id_idx


CREATE INDEX event_chunks_event_id_idx ON "agentic_db_app_public".event_chunks USING BTREE ( event_id );

