-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/columns/actor_id/alterations/alt0000001956


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_admin_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


