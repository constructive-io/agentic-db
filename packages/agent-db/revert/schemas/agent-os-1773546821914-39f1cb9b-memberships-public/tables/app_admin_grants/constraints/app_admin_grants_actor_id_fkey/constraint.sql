-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/constraints/app_admin_grants_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
  DROP CONSTRAINT app_admin_grants_actor_id_fkey;


