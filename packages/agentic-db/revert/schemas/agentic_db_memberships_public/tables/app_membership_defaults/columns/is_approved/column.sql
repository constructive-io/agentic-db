-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_approved/column


ALTER TABLE "agentic_db_memberships_public".app_membership_defaults 
  DROP COLUMN is_approved RESTRICT;


