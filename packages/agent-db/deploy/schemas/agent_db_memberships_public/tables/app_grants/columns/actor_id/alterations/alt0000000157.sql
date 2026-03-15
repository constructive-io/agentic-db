-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000000157
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/column


COMMENT ON COLUMN agent_db_memberships_public.app_grants.actor_id IS 'The member receiving or losing the permission grant';

