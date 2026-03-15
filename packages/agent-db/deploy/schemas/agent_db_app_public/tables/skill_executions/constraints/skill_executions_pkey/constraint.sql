-- Deploy: schemas/agent_db_app_public/tables/skill_executions/constraints/skill_executions_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE agent_db_app_public.skill_executions 
  ADD CONSTRAINT skill_executions_pkey PRIMARY KEY (id);

