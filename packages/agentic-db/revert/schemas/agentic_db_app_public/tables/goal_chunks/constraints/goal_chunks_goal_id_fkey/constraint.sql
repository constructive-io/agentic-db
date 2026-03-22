-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/constraints/goal_chunks_goal_id_fkey/constraint


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP CONSTRAINT goal_chunks_goal_id_fkey;


