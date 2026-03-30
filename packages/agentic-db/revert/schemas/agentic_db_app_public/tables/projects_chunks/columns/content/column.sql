-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".projects_chunks 
  DROP COLUMN content RESTRICT;


