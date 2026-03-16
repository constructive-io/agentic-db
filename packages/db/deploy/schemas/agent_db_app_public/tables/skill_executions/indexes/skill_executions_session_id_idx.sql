-- Deploy: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_session_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/session_id/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_agent_id_idx


CREATE INDEX skill_executions_session_id_idx ON "agent_db_app_public".skill_executions USING BTREE ( session_id );

