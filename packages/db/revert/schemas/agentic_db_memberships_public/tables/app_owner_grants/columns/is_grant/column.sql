-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/is_grant/column


ALTER TABLE "agentic_db_memberships_public".app_owner_grants 
  DROP COLUMN is_grant RESTRICT;


