-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/created_at/alterations/alt0000003283


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


