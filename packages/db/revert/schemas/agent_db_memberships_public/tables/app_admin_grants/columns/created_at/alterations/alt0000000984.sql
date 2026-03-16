-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/created_at/alterations/alt0000000984


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


