-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/alterations/alt0000001472
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

