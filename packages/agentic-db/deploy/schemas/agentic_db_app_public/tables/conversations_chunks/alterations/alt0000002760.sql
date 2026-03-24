-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/alterations/alt0000002760
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DISABLE ROW LEVEL SECURITY;

