-- Revert: schemas/agent_db_app_public/tables/workflows/columns/updated_at/alterations/alt0000002063


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN updated_at DROP NOT NULL;


