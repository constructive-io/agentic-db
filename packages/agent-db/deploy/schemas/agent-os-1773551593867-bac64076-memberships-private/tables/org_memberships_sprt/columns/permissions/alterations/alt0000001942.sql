-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000001942
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_memberships_sprt/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt.permissions IS E'Resolved permission bitmask for this actor-entity pair, used by RLS policies for access control';

