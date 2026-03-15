-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/created_at/alterations/alt0000000321


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults 
  ALTER COLUMN created_at DROP DEFAULT;


