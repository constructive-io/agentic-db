-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/updated_at/alterations/alt0000000322


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults 
  ALTER COLUMN updated_at DROP DEFAULT;


