-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/updated_at/alterations/alt0000000145


ALTER TABLE agent_db_memberships_public.app_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


