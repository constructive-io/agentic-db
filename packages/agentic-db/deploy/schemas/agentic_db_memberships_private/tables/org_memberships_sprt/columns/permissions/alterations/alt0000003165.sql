-- Deploy: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000003165
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column


COMMENT ON COLUMN agentic_db_memberships_private.org_memberships_sprt.permissions IS E'Resolved permission bitmask for this actor-entity pair, used by RLS policies for access control';

