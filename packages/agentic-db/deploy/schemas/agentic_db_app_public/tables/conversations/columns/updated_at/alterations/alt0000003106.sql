-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/alterations/alt0000003106
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/column


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN updated_at SET NOT NULL;

