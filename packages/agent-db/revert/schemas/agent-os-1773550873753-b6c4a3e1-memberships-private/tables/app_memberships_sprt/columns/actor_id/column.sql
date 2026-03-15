-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
  DROP COLUMN actor_id RESTRICT;


