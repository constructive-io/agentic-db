-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_admin_grants/columns/updated_at/alterations/alt0000000401


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


