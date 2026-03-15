-- Deploy: schemas/agent_db_limits_public/tables/app_limits/columns/name/alterations/alt0000003219
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/columns/name/column


COMMENT ON COLUMN "agent_db_limits_public".app_limits.name IS 'Name identifier of the limit being tracked';

