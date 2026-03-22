-- Revert: schemas/agentic_db_app_public/tables/notes/columns/id/column


ALTER TABLE "agentic_db_app_public".notes 
  DROP COLUMN id RESTRICT;


