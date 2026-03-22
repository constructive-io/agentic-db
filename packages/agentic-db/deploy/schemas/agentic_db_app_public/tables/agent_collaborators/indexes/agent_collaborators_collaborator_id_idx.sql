-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/indexes/agent_collaborators_collaborator_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/columns/collaborator_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_agent_log_id_idx


CREATE INDEX agent_collaborators_collaborator_id_idx ON agentic_db_app_public.agent_collaborators USING BTREE ( collaborator_id );

