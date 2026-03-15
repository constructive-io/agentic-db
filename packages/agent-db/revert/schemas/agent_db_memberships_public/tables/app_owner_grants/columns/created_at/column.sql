-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/created_at/column


ALTER TABLE agent_db_memberships_public.app_owner_grants 
  DROP COLUMN created_at RESTRICT;


