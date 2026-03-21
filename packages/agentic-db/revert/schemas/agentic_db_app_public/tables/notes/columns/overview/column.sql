-- Revert: schemas/agentic_db_app_public/tables/notes/columns/overview/column


ALTER TABLE agentic_db_app_public.notes 
  DROP COLUMN overview RESTRICT;


