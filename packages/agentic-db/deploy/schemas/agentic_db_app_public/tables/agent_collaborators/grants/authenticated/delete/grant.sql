-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_agent_log_id_idx


GRANT DELETE ON agentic_db_app_public.agent_collaborators TO authenticated;

