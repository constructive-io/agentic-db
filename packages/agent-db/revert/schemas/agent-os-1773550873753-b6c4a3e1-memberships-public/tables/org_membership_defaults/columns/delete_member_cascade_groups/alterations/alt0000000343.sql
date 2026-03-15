-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000343


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults 
  ALTER COLUMN delete_member_cascade_groups DROP NOT NULL;


