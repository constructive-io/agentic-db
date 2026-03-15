-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000000083
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt.permissions IS E'Resolved permission bitmask for this actor-entity pair, used by RLS policies for access control';

