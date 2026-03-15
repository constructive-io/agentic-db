-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000003326


ALTER TABLE "agent_db_memberships_public".app_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


