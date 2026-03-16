-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/updated_at/alterations/alt0000000985


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


