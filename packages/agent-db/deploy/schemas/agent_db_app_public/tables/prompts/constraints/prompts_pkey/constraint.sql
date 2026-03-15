-- Deploy: schemas/agent_db_app_public/tables/prompts/constraints/prompts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/embedding/column


ALTER TABLE "agent_db_app_public".prompts 
  ADD CONSTRAINT prompts_pkey PRIMARY KEY (id);

