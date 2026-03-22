-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/content/alterations/alt0000002577


ALTER TABLE "agentic_db_app_public".place_chunks 
  ALTER COLUMN content DROP NOT NULL;


