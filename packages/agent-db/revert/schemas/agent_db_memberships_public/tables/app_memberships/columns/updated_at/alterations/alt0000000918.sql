-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/updated_at/alterations/alt0000000918


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


