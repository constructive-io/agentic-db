-- Deploy: schemas/agent_db_app_public/tables/chats/indexes/chats_started_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/started_at/column
-- requires: schemas/agent_db_app_public/tables/execution_log/indexes/execution_logs_session_id_idx


CREATE INDEX chats_started_at_idx ON agent_db_app_public.chats USING BTREE ( started_at );

