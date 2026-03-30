-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/content/alterations/alt0000000947


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN content DROP NOT NULL;


