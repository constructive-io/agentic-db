-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/expenses_id/alterations/alt0000001409


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  ALTER COLUMN expenses_id DROP NOT NULL;


