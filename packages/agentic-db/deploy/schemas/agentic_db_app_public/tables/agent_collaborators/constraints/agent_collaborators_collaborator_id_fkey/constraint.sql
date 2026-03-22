-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/constraints/agent_collaborators_collaborator_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_agent_log_id_idx


ALTER TABLE agentic_db_app_public.agent_collaborators 
  ADD CONSTRAINT agent_collaborators_collaborator_id_fkey 
    FOREIGN KEY(collaborator_id) 
    REFERENCES agentic_db_app_public.agents (id) 
    ON DELETE CASCADE;

