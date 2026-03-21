-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/updated_at/column


ALTER TABLE agentic_db_app_public.workflows 
  DROP COLUMN updated_at RESTRICT;


