-- Revert: schemas/agentic_db_app_public/tables/templates/columns/name/alterations/alt0000001507


ALTER TABLE "agentic_db_app_public".templates 
  ALTER COLUMN name DROP NOT NULL;


