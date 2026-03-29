-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/updated_at/column


ALTER TABLE agentic_db_status_public.app_levels 
  DROP COLUMN updated_at RESTRICT;


