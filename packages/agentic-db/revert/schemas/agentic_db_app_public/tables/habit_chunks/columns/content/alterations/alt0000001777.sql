-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/content/alterations/alt0000001777


ALTER TABLE "agentic_db_app_public".habit_chunks 
  ALTER COLUMN content DROP NOT NULL;


