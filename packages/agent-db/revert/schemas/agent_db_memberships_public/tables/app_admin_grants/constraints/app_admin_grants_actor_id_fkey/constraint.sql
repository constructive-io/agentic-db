-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/constraints/app_admin_grants_actor_id_fkey/constraint


ALTER TABLE agent_db_memberships_public.app_admin_grants 
  DROP CONSTRAINT app_admin_grants_actor_id_fkey;


