-- Revert: schemas/agent_db_app_public/tables/documents/columns/id/alterations/alt0000004629


ALTER TABLE "agent_db_app_public".documents 
  ALTER COLUMN id DROP NOT NULL;


