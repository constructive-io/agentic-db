-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  DROP COLUMN content RESTRICT;


