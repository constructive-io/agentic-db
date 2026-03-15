-- Revert: schemas/agent_db_app_public/tables/documents/columns/title/alterations/alt0000004588


ALTER TABLE "agent_db_app_public".documents 
  ALTER COLUMN title DROP NOT NULL;


