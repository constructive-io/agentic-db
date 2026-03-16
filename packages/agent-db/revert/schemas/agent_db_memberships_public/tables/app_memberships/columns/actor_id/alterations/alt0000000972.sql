-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000000972


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


