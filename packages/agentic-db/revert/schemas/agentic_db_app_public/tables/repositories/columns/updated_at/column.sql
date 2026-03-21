-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/updated_at/column


ALTER TABLE agentic_db_app_public.repositories 
  DROP COLUMN updated_at RESTRICT;


