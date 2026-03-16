-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/actor_id/column


ALTER TABLE "agent_db_memberships_public".app_memberships 
  DROP COLUMN actor_id RESTRICT;


