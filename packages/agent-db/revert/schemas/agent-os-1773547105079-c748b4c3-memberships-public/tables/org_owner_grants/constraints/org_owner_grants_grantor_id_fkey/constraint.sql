-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/constraints/org_owner_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_owner_grants 
  DROP CONSTRAINT org_owner_grants_grantor_id_fkey;


