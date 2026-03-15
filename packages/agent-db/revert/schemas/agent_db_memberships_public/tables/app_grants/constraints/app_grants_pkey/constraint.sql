-- Revert: schemas/agent_db_memberships_public/tables/app_grants/constraints/app_grants_pkey/constraint


ALTER TABLE agent_db_memberships_public.app_grants 
  DROP CONSTRAINT app_grants_pkey;


