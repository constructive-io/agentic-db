-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/entity_id/alterations/alt0000004058


ALTER TABLE agentic_db_app_public.goal_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


