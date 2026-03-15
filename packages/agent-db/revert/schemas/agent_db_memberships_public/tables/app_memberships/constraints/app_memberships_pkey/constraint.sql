-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/constraints/app_memberships_pkey/constraint


ALTER TABLE agent_db_memberships_public.app_memberships 
  DROP CONSTRAINT app_memberships_pkey;


