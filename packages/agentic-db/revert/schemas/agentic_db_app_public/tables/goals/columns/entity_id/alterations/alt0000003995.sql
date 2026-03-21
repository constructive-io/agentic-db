-- Revert: schemas/agentic_db_app_public/tables/goals/columns/entity_id/alterations/alt0000003995


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN entity_id DROP NOT NULL;


