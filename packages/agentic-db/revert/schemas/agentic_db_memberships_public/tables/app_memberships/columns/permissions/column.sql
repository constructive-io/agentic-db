-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/permissions/column


ALTER TABLE "agentic_db_memberships_public".app_memberships 
  DROP COLUMN permissions RESTRICT;


