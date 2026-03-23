-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/constraints/agent_tasks_pkey/constraint


ALTER TABLE "agentic_db_app_public".agent_tasks 
  DROP CONSTRAINT agent_tasks_pkey;


