-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/actor_id/column


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  DROP COLUMN actor_id RESTRICT;


