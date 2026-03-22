-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000004692


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN name DROP NOT NULL;


