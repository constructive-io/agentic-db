-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".note_chunks 
  DROP COLUMN content RESTRICT;


