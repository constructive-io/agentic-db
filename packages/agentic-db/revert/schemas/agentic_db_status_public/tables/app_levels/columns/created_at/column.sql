-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/created_at/column


ALTER TABLE agentic_db_status_public.app_levels 
  DROP COLUMN created_at RESTRICT;


