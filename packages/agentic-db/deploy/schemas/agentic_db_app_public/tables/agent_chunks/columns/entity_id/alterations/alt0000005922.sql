-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/columns/entity_id/alterations/alt0000005922
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/skills/triggers/skills_embedding_stale_update_tg


ALTER TABLE agentic_db_app_public.agent_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

