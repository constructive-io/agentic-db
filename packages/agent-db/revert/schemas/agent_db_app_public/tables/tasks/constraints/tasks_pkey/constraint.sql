-- Revert: schemas/agent_db_app_public/tables/tasks/constraints/tasks_pkey/constraint


ALTER TABLE "agent_db_app_public".tasks 
  DROP CONSTRAINT tasks_pkey;


