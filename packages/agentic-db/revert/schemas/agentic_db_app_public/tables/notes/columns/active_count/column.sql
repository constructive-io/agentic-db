-- Revert: schemas/agentic_db_app_public/tables/notes/columns/active_count/column


ALTER TABLE agentic_db_app_public.notes 
  DROP COLUMN active_count RESTRICT;


