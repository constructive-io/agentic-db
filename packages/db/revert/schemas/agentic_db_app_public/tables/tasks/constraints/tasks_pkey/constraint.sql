-- Revert: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_pkey/constraint


ALTER TABLE "agentic_db_app_public".tasks 
  DROP CONSTRAINT tasks_pkey;


