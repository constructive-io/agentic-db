-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/updated_at/alterations/alt0000002010


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


