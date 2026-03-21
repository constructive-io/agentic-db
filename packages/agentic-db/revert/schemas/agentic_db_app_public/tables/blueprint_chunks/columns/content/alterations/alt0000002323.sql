-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/content/alterations/alt0000002323


ALTER TABLE "agentic_db_app_public".blueprint_chunks 
  ALTER COLUMN content DROP NOT NULL;


