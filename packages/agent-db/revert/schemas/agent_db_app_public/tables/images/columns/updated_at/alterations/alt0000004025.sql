-- Revert: schemas/agent_db_app_public/tables/images/columns/updated_at/alterations/alt0000004025


ALTER TABLE "agent_db_app_public".images 
  ALTER COLUMN updated_at DROP NOT NULL;


