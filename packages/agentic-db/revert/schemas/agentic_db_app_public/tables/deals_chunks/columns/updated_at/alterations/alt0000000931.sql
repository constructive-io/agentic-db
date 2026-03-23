-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/updated_at/alterations/alt0000000931


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


