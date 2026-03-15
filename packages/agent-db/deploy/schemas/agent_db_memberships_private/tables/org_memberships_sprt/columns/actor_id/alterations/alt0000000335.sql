-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000000335
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/column


COMMENT ON COLUMN agent_db_memberships_private.org_memberships_sprt.actor_id IS 'References the user whose permissions are being resolved';

