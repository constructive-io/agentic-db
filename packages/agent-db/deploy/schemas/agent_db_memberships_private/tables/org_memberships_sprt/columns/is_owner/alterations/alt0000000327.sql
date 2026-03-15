-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_owner/alterations/alt0000000327
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_owner/column


COMMENT ON COLUMN agent_db_memberships_private.org_memberships_sprt.is_owner IS 'Whether the actor is the owner of the entity';

