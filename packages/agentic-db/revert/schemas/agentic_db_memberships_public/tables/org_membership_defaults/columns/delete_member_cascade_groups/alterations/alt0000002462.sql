-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000002462


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  ALTER COLUMN delete_member_cascade_groups DROP NOT NULL;


