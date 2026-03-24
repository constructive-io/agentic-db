-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/name/alterations/alt0000001516


ALTER TABLE agentic_db_status_public.app_levels 
  ALTER COLUMN name DROP NOT NULL;


