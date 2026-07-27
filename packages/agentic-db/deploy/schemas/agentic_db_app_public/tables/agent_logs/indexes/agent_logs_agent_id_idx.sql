-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/agent_id/column


CREATE INDEX agent_logs_agent_id_idx ON agentic_db_app_public.agent_logs USING BTREE ( agent_id );

