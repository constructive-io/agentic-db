-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".rules_chunks 
  DROP COLUMN content RESTRICT;


