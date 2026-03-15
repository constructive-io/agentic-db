-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/actor_id/alterations/alt0000000129


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


