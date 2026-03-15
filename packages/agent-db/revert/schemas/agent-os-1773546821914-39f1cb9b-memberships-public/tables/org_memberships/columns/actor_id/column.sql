-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/actor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  DROP COLUMN actor_id RESTRICT;


