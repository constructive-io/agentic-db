-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/id/alterations/alt0000002044


ALTER TABLE "agentic_db_app_public".habit_chunks 
  ALTER COLUMN id DROP NOT NULL;


