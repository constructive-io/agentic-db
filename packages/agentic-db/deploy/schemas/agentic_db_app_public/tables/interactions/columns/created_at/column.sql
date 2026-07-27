-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table


ALTER TABLE agentic_db_app_public.interactions 
  ADD COLUMN created_at timestamptz;

