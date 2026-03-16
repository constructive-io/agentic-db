-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/constraints/skill_executions_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skill_executions 
  ADD CONSTRAINT skill_executions_pkey PRIMARY KEY (id);

