-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_session_id_idx


CREATE INDEX skill_executions_status_idx ON agentic_db_app_public.skill_executions USING BTREE ( status );

