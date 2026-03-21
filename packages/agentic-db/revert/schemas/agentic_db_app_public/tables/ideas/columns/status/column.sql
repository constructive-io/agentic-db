-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/status/column


ALTER TABLE agentic_db_app_public.ideas 
  DROP COLUMN status RESTRICT;


