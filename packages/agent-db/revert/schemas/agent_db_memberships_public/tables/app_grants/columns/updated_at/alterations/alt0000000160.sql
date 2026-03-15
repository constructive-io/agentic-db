-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/updated_at/alterations/alt0000000160


ALTER TABLE agent_db_memberships_public.app_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


