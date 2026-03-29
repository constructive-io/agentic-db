-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/is_approved/alterations/alt0000002870


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  ALTER COLUMN is_approved DROP NOT NULL;


