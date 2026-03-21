-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/constraints/document_chunks_document_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/indexes/calendar_event_chunks_calendar_event_id_idx


ALTER TABLE agentic_db_app_public.document_chunks 
  ADD CONSTRAINT document_chunks_document_id_fkey 
    FOREIGN KEY(document_id) 
    REFERENCES agentic_db_app_public.documents (id) 
    ON DELETE CASCADE;

