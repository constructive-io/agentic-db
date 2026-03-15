-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/is_approved/column


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  DROP COLUMN is_approved RESTRICT;


