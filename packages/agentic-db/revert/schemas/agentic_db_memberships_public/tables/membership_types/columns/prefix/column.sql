-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/columns/prefix/column


ALTER TABLE "agentic_db_memberships_public".membership_types 
  DROP COLUMN prefix RESTRICT;


