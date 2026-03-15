-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  DROP COLUMN actor_id RESTRICT;


