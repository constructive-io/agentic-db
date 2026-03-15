-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/is_active/alterations/alt0000000360
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/is_active/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships.is_active IS E'Computed field indicating the membership is approved, verified, not banned, and not disabled';

