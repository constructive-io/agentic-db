-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/column


ALTER TABLE agentic_db_memberships_public.membership_types 
  DROP COLUMN name RESTRICT;


