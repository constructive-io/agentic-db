-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/id/column


ALTER TABLE agentic_db_app_public.ideas 
  DROP COLUMN id RESTRICT;


