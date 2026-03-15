-- Deploy: schemas/agent_db_app_public/tables/agent_tools/indexes/agent_tools_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/agent_tools/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_action_idx


CREATE INDEX agent_tools_agent_id_idx ON agent_db_app_public.agent_tools USING BTREE ( agent_id );

