-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/updated_at/alterations/alt0000001734


ALTER TABLE "agentic_db_app_public".habits_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


