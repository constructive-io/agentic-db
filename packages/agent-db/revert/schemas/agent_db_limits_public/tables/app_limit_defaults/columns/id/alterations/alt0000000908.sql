-- Revert: schemas/agent_db_limits_public/tables/app_limit_defaults/columns/id/alterations/alt0000000908


ALTER TABLE "agent_db_limits_public".app_limit_defaults 
  ALTER COLUMN id DROP NOT NULL;


