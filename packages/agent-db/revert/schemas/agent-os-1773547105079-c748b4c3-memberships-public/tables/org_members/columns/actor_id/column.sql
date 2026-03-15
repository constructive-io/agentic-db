-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
  DROP COLUMN actor_id RESTRICT;


