-- Deploy: schemas/agent_db_limits_public/tables/org_limits/columns/max/alterations/alt0000002006
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/columns/max/column


COMMENT ON COLUMN "agent_db_limits_public".org_limits.max IS E'Maximum allowed usage; NULL means use the default limit value';

