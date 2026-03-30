-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/end_line/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  DROP COLUMN end_line RESTRICT;


