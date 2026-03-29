-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_approved/alterations/alt0000004567


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN is_approved DROP NOT NULL;


