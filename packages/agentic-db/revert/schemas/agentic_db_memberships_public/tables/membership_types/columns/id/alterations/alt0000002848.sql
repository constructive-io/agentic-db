-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/id/alterations/alt0000002848


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN id DROP NOT NULL;


