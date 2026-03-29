-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.goals_chunks 
  DROP COLUMN entity_id RESTRICT;


