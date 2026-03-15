-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/constraints/org_members_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  DROP CONSTRAINT org_members_actor_id_fkey;


