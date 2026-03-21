-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/updated_at/column


ALTER TABLE agentic_db_app_public.ideas 
  DROP COLUMN updated_at RESTRICT;


