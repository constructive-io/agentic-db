-- Revert: schemas/agentic_db_app_public/tables/tags/columns/name/alterations/alt0000001271


ALTER TABLE "agentic_db_app_public".tags 
  ALTER COLUMN name DROP NOT NULL;


