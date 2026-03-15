-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000000335
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt.actor_id IS 'References the user whose permissions are being resolved';

