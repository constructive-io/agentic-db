-- Deploy: schemas/agent_db_limits_public/tables/app_limit_defaults/columns/name/alterations/alt0000003228
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limit_defaults/table
-- requires: schemas/agent_db_limits_public/tables/app_limit_defaults/columns/name/column


ALTER TABLE "agent_db_limits_public".app_limit_defaults 
  ALTER COLUMN name SET NOT NULL;

