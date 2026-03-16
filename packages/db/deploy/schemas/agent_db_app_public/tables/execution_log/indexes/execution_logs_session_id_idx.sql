-- Deploy: schemas/agent_db_app_public/tables/execution_log/indexes/execution_logs_session_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/sessions/indexes/sessions_agent_id_idx
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/session_id/column


CREATE INDEX execution_logs_session_id_idx ON "agent_db_app_public".execution_log USING BTREE ( session_id );

