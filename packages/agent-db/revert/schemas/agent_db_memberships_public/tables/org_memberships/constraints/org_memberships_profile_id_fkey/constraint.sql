-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/constraints/org_memberships_profile_id_fkey/constraint


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP CONSTRAINT org_memberships_profile_id_fkey;


