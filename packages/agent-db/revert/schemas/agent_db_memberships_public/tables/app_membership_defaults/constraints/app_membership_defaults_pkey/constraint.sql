-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/constraints/app_membership_defaults_pkey/constraint


ALTER TABLE agent_db_memberships_public.app_membership_defaults 
  DROP CONSTRAINT app_membership_defaults_pkey;


