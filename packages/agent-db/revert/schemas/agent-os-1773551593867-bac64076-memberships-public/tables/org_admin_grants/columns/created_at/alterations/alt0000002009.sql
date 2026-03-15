-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/created_at/alterations/alt0000002009


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


