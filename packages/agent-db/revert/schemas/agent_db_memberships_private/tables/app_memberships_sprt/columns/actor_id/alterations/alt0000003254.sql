-- Revert: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000003254


ALTER TABLE "agent_db_memberships_private".app_memberships_sprt 
  ALTER COLUMN actor_id DROP NOT NULL;


