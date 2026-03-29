-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/id/alterations/alt0000004408


ALTER TABLE agentic_db_status_public.app_levels 
  ALTER COLUMN id DROP NOT NULL;


