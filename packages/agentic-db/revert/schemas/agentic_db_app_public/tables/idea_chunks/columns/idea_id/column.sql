-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/idea_id/column


ALTER TABLE "agentic_db_app_public".idea_chunks 
  DROP COLUMN idea_id RESTRICT;


