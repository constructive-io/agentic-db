-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/created_at/column


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  DROP COLUMN created_at RESTRICT;


