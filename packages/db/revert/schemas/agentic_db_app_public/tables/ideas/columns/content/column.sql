-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/content/column


ALTER TABLE "agentic_db_app_public".ideas 
  DROP COLUMN content RESTRICT;


