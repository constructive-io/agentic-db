-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/name/alterations/alt0000001213


ALTER TABLE "agentic_db_app_public".workflows 
  ALTER COLUMN name DROP NOT NULL;


