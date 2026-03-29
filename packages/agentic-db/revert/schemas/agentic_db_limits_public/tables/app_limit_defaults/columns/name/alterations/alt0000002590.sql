-- Revert: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/name/alterations/alt0000002590


ALTER TABLE agentic_db_limits_public.app_limit_defaults 
  ALTER COLUMN name DROP NOT NULL;


