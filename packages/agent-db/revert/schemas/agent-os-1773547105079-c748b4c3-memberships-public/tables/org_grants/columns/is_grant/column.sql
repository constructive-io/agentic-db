-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_grants 
  DROP COLUMN is_grant RESTRICT;


