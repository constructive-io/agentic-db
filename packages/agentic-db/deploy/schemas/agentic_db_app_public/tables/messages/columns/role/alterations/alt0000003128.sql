-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/role/alterations/alt0000003128
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/role/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN role SET NOT NULL;

