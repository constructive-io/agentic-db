-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt 
  DROP COLUMN actor_id RESTRICT;


