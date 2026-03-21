-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".document_chunks 
  ENABLE ROW LEVEL SECURITY;

