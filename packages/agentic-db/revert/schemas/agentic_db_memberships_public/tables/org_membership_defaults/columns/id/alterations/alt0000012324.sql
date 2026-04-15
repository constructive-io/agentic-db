-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/id/alterations/alt0000012324


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  ALTER COLUMN id DROP NOT NULL;


