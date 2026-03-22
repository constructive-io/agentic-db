-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_verified/column


ALTER TABLE "agentic_db_memberships_public".app_membership_defaults 
  DROP COLUMN is_verified RESTRICT;


