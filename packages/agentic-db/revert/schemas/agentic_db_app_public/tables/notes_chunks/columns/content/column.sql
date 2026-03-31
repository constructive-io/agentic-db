-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".notes_chunks 
  DROP COLUMN content RESTRICT;


