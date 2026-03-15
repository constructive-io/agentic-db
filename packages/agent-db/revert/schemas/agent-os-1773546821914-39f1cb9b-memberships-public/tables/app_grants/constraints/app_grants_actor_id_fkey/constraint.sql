-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/constraints/app_grants_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  DROP CONSTRAINT app_grants_actor_id_fkey;


