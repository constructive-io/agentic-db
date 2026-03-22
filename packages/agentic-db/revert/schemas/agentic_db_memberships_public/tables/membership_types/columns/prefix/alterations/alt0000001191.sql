-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000001191


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN prefix DROP NOT NULL;


