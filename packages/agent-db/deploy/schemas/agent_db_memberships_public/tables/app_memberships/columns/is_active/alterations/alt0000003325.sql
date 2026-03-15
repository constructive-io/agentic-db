-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_active/alterations/alt0000003325
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_active/column


COMMENT ON COLUMN "agent_db_memberships_public".app_memberships.is_active IS E'Computed field indicating the membership is approved, verified, not banned, and not disabled';

