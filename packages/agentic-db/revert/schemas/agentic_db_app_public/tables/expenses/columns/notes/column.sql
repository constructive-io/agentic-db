-- Revert: schemas/agentic_db_app_public/tables/expenses/columns/notes/column


ALTER TABLE "agentic_db_app_public".expenses 
  DROP COLUMN notes RESTRICT;


