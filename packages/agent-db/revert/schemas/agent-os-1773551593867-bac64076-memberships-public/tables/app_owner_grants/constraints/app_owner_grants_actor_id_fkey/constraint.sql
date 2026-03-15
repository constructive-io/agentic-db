-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/constraints/app_owner_grants_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants 
  DROP CONSTRAINT app_owner_grants_actor_id_fkey;


