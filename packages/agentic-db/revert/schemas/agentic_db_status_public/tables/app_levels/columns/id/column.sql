-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/id/column


ALTER TABLE agentic_db_status_public.app_levels 
  DROP COLUMN id RESTRICT;


