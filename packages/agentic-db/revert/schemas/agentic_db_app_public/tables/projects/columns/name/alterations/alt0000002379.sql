-- Revert: schemas/agentic_db_app_public/tables/projects/columns/name/alterations/alt0000002379


ALTER TABLE "agentic_db_app_public".projects 
  ALTER COLUMN name DROP NOT NULL;


