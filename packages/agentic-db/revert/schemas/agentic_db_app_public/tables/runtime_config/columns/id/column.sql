-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/id/column


ALTER TABLE agentic_db_app_public.runtime_config 
  DROP COLUMN id RESTRICT;


