-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants 
  DROP COLUMN created_at RESTRICT;


