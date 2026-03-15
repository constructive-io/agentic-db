-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/actor_id/alterations/alt0000000384


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  ALTER COLUMN actor_id DROP NOT NULL;


