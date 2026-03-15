-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/is_grant/column


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  DROP COLUMN is_grant RESTRICT;


