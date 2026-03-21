-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/id/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN id RESTRICT;


