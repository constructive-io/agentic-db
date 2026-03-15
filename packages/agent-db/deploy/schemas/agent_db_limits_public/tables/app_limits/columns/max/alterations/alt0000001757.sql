-- Deploy: schemas/agent_db_limits_public/tables/app_limits/columns/max/alterations/alt0000001757
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/columns/max/column


COMMENT ON COLUMN "agent_db_limits_public".app_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

