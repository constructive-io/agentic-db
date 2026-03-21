-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/id/alterations/alt0000004056


ALTER TABLE agentic_db_app_public.goal_chunks 
  ALTER COLUMN id DROP NOT NULL;


