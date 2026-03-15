-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/actor_id/alterations/alt0000000120


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


