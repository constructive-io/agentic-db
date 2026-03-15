-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/permissions/column


ALTER TABLE agent_db_memberships_public.app_grants 
  DROP COLUMN permissions RESTRICT;


