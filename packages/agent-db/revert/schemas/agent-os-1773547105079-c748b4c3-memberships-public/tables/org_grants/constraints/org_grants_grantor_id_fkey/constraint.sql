-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_grants/constraints/org_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_grants 
  DROP CONSTRAINT org_grants_grantor_id_fkey;


