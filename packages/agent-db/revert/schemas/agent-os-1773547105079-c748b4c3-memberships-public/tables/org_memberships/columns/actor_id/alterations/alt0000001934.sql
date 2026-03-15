-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/actor_id/alterations/alt0000001934


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


