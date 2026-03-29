-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000009648


ALTER TABLE agentic_db_memberships_public.app_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


