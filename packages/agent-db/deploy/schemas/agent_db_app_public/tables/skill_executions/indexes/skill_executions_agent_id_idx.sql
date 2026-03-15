-- Deploy: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_skill_id_idx


CREATE INDEX skill_executions_agent_id_idx ON agent_db_app_public.skill_executions USING BTREE ( agent_id );

