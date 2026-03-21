-- Revert: schemas/agentic_db_app_public/tables/documents/columns/title/alterations/alt0000002496


ALTER TABLE "agentic_db_app_public".documents 
  ALTER COLUMN title DROP NOT NULL;


