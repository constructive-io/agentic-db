-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/alterations/alt0000005964
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_agent_log_id_idx


COMMENT ON TABLE agentic_db_app_public.agent_collaborators IS E'@behavior +manyToMany';

