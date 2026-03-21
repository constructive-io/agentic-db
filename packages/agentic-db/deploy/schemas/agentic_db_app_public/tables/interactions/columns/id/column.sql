-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE agentic_db_app_public.interactions 
  ADD COLUMN id uuid;

