-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/name/alterations/alt0000003386


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN name DROP NOT NULL;


