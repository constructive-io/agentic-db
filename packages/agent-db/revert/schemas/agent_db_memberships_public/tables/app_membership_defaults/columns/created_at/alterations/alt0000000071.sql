-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/created_at/alterations/alt0000000071


ALTER TABLE agent_db_memberships_public.app_membership_defaults 
  ALTER COLUMN created_at DROP DEFAULT;


