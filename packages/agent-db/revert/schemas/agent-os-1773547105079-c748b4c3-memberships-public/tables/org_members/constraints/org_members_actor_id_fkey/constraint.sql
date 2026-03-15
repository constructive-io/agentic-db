-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/constraints/org_members_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
  DROP CONSTRAINT org_members_actor_id_fkey;


