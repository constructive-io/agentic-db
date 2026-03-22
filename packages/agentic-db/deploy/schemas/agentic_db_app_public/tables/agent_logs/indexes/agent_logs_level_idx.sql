-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_level_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/level/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/indexes/agent_tasks_priority_idx


CREATE INDEX agent_logs_level_idx ON "agentic_db_app_public".agent_logs USING BTREE ( level );

