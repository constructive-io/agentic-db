-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/id/column


ALTER TABLE agentic_db_app_public.workflows 
  DROP COLUMN id RESTRICT;


