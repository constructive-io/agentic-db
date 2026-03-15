-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000001952
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  ALTER COLUMN delete_member_cascade_groups SET NOT NULL;

