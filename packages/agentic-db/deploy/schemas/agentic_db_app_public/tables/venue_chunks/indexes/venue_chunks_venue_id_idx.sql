-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/indexes/venue_chunks_venue_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/venue_id/column
-- requires: schemas/agentic_db_app_public/tables/event_chunks/indexes/event_chunks_event_id_idx


CREATE INDEX venue_chunks_venue_id_idx ON agentic_db_app_public.venue_chunks USING BTREE ( venue_id );

