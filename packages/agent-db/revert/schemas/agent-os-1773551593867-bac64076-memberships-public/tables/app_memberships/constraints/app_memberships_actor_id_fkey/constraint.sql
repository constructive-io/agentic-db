-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/constraints/app_memberships_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  DROP CONSTRAINT app_memberships_actor_id_fkey;


