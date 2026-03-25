-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/expenses_id/column


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  DROP COLUMN expenses_id RESTRICT;


