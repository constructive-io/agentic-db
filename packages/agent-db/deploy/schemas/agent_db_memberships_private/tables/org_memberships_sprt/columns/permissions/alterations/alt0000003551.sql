-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000003551
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column


COMMENT ON COLUMN "agent_db_memberships_private".org_memberships_sprt.permissions IS E'Resolved permission bitmask for this actor-entity pair, used by RLS policies for access control';

