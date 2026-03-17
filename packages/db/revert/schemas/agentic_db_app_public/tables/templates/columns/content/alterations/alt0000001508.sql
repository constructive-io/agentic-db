-- Revert: schemas/agentic_db_app_public/tables/templates/columns/content/alterations/alt0000001508


ALTER TABLE "agentic_db_app_public".templates 
  ALTER COLUMN content DROP NOT NULL;


