-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_started_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/started_at/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_status_idx


CREATE INDEX skill_executions_started_at_idx ON agentic_db_app_public.skill_executions USING BTREE ( started_at );

