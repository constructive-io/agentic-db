-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_grants/columns/created_at/alterations/alt0000001992


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_grants 
  ALTER COLUMN created_at DROP DEFAULT;


