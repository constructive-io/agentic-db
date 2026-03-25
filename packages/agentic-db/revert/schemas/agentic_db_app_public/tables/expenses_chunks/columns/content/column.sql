-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  DROP COLUMN content RESTRICT;


