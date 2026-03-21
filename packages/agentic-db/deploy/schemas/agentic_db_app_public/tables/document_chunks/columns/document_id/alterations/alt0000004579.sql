-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/columns/document_id/alterations/alt0000004579
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/document_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/indexes/calendar_event_chunks_calendar_event_id_idx


ALTER TABLE agentic_db_app_public.document_chunks 
  ALTER COLUMN document_id SET NOT NULL;

