-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/actor_id/alterations/alt0000003348
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/actor_id/column


COMMENT ON COLUMN "agent_db_memberships_public".app_admin_grants.actor_id IS 'The member receiving or losing the admin grant';

