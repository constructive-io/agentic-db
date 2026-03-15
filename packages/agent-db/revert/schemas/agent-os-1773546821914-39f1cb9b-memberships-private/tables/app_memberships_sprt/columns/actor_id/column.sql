-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt 
  DROP COLUMN actor_id RESTRICT;


