-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/description/alterations/alt0000009512


ALTER TABLE agentic_db_memberships_public.membership_types 
  ALTER COLUMN description DROP NOT NULL;


