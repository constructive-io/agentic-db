-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP COLUMN updated_at RESTRICT;


