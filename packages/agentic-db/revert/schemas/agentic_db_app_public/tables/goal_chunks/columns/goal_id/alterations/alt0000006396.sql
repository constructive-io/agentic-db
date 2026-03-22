-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/goal_id/alterations/alt0000006396


ALTER TABLE agentic_db_app_public.goal_chunks 
  ALTER COLUMN goal_id DROP NOT NULL;


