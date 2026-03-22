-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP COLUMN content RESTRICT;


