-- Revert: schemas/agent_db_app_public/tables/feedback/columns/updated_at/alterations/alt0000004294


ALTER TABLE "agent_db_app_public".feedback 
  ALTER COLUMN updated_at DROP NOT NULL;


