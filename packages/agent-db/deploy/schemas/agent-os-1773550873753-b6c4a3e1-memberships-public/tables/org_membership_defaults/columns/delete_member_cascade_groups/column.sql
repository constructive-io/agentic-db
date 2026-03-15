-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults 
  ADD COLUMN delete_member_cascade_groups boolean;

