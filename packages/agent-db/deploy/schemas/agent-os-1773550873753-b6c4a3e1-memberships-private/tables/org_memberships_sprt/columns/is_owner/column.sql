-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/is_owner/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt 
  ADD COLUMN is_owner boolean;

