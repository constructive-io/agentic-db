-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/actor_id/column


ALTER TABLE agent_db_memberships_public.app_grants 
  DROP COLUMN actor_id RESTRICT;


