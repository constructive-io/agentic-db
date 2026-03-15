-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  DROP COLUMN actor_id RESTRICT;


