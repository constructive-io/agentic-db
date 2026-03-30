-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/created_by/column


ALTER TABLE "agentic_db_memberships_public".app_membership_defaults 
  DROP COLUMN created_by RESTRICT;


