-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/updated_at/column


ALTER TABLE agent_db_memberships_public.app_membership_defaults 
  DROP COLUMN updated_at RESTRICT;


