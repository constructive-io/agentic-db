-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/columns/entity_id/alterations/alt0000002574
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".document_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

