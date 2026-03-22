-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/id/column


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  DROP COLUMN id RESTRICT;


