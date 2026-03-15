-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/constraints/org_admin_grants_pkey/constraint


ALTER TABLE agent_db_memberships_public.org_admin_grants 
  DROP CONSTRAINT org_admin_grants_pkey;


