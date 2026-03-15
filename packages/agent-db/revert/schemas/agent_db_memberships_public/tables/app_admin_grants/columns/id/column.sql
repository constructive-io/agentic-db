-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/id/column


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  DROP COLUMN id RESTRICT;


