-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/habit_id/alterations/alt0000002656


ALTER TABLE "agentic_db_app_public".habit_chunks 
  ALTER COLUMN habit_id DROP NOT NULL;


