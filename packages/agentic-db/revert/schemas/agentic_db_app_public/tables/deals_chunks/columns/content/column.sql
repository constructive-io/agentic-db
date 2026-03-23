-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".deals_chunks 
  DROP COLUMN content RESTRICT;


