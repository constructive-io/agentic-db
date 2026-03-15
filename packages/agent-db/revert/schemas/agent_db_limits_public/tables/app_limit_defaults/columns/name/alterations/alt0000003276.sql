-- Revert: schemas/agent_db_limits_public/tables/app_limit_defaults/columns/name/alterations/alt0000003276


ALTER TABLE "agent_db_limits_public".app_limit_defaults 
  ALTER COLUMN name DROP NOT NULL;


