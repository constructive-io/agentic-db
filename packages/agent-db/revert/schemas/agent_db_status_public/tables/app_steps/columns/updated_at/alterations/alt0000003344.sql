-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/updated_at/alterations/alt0000003344


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN updated_at DROP DEFAULT;


