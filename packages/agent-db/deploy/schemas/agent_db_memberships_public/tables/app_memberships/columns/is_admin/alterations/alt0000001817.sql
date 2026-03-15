-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_admin/alterations/alt0000001817
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_admin/column


COMMENT ON COLUMN "agent_db_memberships_public".app_memberships.is_admin IS 'Whether the actor has admin privileges on this entity';

