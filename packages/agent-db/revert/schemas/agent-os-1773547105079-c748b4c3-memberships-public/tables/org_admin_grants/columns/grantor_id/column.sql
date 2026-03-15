-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/columns/grantor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_admin_grants 
  DROP COLUMN grantor_id RESTRICT;


