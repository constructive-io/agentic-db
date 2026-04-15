-- Revert: schemas/agentic_db_app_public/tables/goals/columns/updated_at/alterations/alt0000013408


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN updated_at DROP NOT NULL;


