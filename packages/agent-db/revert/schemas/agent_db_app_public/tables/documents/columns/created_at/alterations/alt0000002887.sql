-- Revert: schemas/agent_db_app_public/tables/documents/columns/created_at/alterations/alt0000002887


ALTER TABLE "agent_db_app_public".documents 
  ALTER COLUMN created_at DROP NOT NULL;


