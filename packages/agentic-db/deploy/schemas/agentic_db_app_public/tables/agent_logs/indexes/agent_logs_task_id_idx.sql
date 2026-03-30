-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_task_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX agent_logs_task_id_idx ON "agentic_db_app_public".agent_logs USING BTREE ( task_id );

