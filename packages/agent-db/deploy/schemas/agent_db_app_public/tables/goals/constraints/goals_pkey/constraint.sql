-- Deploy: schemas/agent_db_app_public/tables/goals/constraints/goals_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent_db_app_public".goals 
  ADD CONSTRAINT goals_pkey PRIMARY KEY (id);

