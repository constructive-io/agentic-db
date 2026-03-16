-- Revert: schemas/agent_db_app_public/tables/documents/columns/updated_at/alterations/alt0000002234


ALTER TABLE "agent_db_app_public".documents 
  ALTER COLUMN updated_at DROP NOT NULL;


