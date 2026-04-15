-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/created_at/column


ALTER TABLE agentic_db_app_public.runtime_config 
  DROP COLUMN created_at RESTRICT;


