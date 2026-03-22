-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE agentic_db_app_public.skills 
  ADD COLUMN embedding_stale boolean;

