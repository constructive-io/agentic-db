-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/updated_at/alterations/alt0000001931


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  ALTER COLUMN updated_at DROP DEFAULT;


