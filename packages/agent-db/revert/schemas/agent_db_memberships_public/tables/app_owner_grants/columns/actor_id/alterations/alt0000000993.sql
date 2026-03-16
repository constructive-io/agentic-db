-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/actor_id/alterations/alt0000000993


ALTER TABLE "agent_db_memberships_public".app_owner_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


