-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/entity_id/alterations/alt0000005880


ALTER TABLE agentic_db_app_public.goals_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


