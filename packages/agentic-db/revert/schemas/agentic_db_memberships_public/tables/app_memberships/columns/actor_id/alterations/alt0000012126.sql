-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000012126


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


