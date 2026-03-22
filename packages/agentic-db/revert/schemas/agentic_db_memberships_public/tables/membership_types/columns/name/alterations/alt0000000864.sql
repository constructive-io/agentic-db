-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000000864


ALTER TABLE "agentic_db_memberships_public".membership_types 
  ALTER COLUMN name DROP NOT NULL;


