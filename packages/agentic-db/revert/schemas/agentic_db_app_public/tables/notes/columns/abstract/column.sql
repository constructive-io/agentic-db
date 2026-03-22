-- Revert: schemas/agentic_db_app_public/tables/notes/columns/abstract/column


ALTER TABLE "agentic_db_app_public".notes 
  DROP COLUMN abstract RESTRICT;


