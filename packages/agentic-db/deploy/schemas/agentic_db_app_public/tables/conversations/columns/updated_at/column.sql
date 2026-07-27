-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table


ALTER TABLE agentic_db_app_public.conversations 
  ADD COLUMN updated_at timestamptz;

