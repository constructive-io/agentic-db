-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  DROP COLUMN delete_member_cascade_groups RESTRICT;


