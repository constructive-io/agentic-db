-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/created_at/alterations/alt0000012203


ALTER TABLE agentic_db_status_public.app_levels 
  ALTER COLUMN created_at DROP DEFAULT;


