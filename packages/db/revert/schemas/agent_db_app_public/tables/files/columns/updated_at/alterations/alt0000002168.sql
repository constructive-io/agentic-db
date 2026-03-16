-- Revert: schemas/agent_db_app_public/tables/files/columns/updated_at/alterations/alt0000002168


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN updated_at DROP NOT NULL;


