-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP COLUMN created_at RESTRICT;


