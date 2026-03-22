-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_trigger_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_type/column
-- requires: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_task_id_idx


CREATE INDEX rules_trigger_type_idx ON agentic_db_app_public.rules USING BTREE ( trigger_type );

