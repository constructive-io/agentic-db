-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".idea_chunks 
  DROP COLUMN created_at RESTRICT;


