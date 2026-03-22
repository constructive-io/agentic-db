-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/alterations/alt0000005919
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/triggers/skills_embedding_stale_update_tg


ALTER TABLE agentic_db_app_public.agent_chunks 
  DISABLE ROW LEVEL SECURITY;

