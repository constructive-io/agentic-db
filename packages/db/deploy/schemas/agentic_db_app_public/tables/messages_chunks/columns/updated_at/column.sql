-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ADD COLUMN updated_at timestamptz;

