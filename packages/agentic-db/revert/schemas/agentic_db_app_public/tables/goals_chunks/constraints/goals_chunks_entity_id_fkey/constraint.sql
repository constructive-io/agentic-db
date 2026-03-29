-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/constraints/goals_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.goals_chunks 
  DROP CONSTRAINT goals_chunks_entity_id_fkey;


