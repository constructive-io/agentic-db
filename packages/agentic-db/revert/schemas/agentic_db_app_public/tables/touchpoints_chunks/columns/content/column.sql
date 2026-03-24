-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  DROP COLUMN content RESTRICT;


