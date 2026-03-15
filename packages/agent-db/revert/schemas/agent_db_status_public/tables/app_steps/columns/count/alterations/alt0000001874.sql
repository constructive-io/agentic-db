-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/count/alterations/alt0000001874


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN count DROP NOT NULL;


