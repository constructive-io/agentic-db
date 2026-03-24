-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/created_at/alterations/alt0000001732


ALTER TABLE "agentic_db_app_public".habits_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


