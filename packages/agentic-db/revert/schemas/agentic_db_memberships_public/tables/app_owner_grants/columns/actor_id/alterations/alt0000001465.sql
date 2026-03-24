-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/actor_id/alterations/alt0000001465


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


