-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.goal_chunks 
  DROP COLUMN embedding_text RESTRICT;


