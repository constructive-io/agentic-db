-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/actor_id/alterations/alt0000000374
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/actor_id/column


COMMENT ON COLUMN agent_db_memberships_public.org_memberships.actor_id IS 'References the user who holds this membership';

