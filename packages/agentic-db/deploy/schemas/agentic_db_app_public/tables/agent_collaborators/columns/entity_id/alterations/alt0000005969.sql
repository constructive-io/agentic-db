-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/columns/entity_id/alterations/alt0000005969
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_agent_log_id_idx


ALTER TABLE agentic_db_app_public.agent_collaborators 
  ALTER COLUMN entity_id SET NOT NULL;

