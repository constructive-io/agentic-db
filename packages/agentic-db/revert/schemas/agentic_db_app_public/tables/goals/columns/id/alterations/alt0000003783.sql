-- Revert: schemas/agentic_db_app_public/tables/goals/columns/id/alterations/alt0000003783


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN id DROP NOT NULL;


