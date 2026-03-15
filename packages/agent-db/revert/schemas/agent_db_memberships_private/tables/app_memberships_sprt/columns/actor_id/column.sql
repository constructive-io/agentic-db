-- Revert: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent_db_memberships_private".app_memberships_sprt 
  DROP COLUMN actor_id RESTRICT;


