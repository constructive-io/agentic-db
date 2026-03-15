-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/actor_id/alterations/alt0000000427
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/actor_id/column


COMMENT ON COLUMN agent_db_memberships_public.org_grants.actor_id IS 'The member receiving or losing the permission grant';

