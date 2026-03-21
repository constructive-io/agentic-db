-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000002854


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN prefix DROP NOT NULL;


