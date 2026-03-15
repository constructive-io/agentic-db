-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/created_at/alterations/alt0000001930


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  ALTER COLUMN created_at DROP DEFAULT;


