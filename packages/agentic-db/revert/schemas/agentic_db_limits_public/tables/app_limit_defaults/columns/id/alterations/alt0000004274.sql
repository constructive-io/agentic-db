-- Revert: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/id/alterations/alt0000004274


ALTER TABLE agentic_db_limits_public.app_limit_defaults 
  ALTER COLUMN id DROP NOT NULL;


