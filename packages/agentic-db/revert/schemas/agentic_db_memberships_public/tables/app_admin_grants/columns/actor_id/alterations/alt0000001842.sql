-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/actor_id/alterations/alt0000001842


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


