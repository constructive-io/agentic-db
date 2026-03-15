-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/permissions/alterations/alt0000003334
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/permissions/column


COMMENT ON COLUMN "agent_db_memberships_public".app_memberships.permissions IS E'Aggregated permission bitmask combining profile-based and directly granted permissions';

