-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/constraints/app_memberships_actor_id_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  DROP CONSTRAINT app_memberships_actor_id_key;


