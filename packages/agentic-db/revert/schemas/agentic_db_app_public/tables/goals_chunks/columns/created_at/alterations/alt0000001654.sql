-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/created_at/alterations/alt0000001654


ALTER TABLE "agentic_db_app_public".goals_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


