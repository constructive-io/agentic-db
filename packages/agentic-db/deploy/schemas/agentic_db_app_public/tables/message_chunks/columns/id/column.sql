-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/embedding/column


ALTER TABLE agentic_db_app_public.message_chunks 
  ADD COLUMN id uuid;

