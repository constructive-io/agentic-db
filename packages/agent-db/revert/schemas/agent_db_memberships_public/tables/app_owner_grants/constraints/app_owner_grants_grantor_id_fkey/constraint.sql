-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/constraints/app_owner_grants_grantor_id_fkey/constraint


ALTER TABLE agent_db_memberships_public.app_owner_grants 
  DROP CONSTRAINT app_owner_grants_grantor_id_fkey;


