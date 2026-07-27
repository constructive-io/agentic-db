-- Deploy: schemas/agentic_db_app_public/tables/event_notes/indexes/event_notes_event_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/columns/event_id/column


CREATE INDEX event_notes_event_id_idx ON agentic_db_app_public.event_notes USING BTREE ( event_id );

