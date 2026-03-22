-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/updated_at/alterations/alt0000001013


ALTER TABLE "agentic_db_app_public".event_chunks 
  ADD COLUMN chunk_index int;

