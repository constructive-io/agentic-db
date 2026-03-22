-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/owner_id/column


ALTER TABLE agentic_db_status_public.app_levels 
  DROP COLUMN owner_id RESTRICT;


