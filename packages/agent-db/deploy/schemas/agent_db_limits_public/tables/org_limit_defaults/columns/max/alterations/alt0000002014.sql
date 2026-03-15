-- Deploy: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/max/alterations/alt0000002014
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/max/column


COMMENT ON COLUMN "agent_db_limits_public".org_limit_defaults.max IS 'Default maximum usage allowed for this limit';

