-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/actor_id/alterations/alt0000001945


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
  ALTER COLUMN actor_id DROP NOT NULL;


