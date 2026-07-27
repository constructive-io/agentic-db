-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger_embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table


ALTER TABLE agentic_db_app_public.skills 
  ADD COLUMN intent_trigger_embedding_updated_at timestamptz;

