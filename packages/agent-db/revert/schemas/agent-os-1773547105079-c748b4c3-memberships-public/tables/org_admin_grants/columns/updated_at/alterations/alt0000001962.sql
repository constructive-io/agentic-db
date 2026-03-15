-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/columns/updated_at/alterations/alt0000001962


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


