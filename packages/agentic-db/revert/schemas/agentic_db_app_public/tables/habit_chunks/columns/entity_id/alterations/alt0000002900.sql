-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/entity_id/alterations/alt0000002900


ALTER TABLE agentic_db_app_public.habit_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


