-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000001787
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/permissions/column


COMMENT ON COLUMN "agent_db_memberships_private".app_memberships_sprt.permissions IS E'Resolved permission bitmask for this actor-entity pair, used by RLS policies for access control';

