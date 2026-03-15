-- Revert: schemas/agent_db_memberships_public/tables/app_grants/columns/created_at/alterations/alt0000003329


ALTER TABLE "agent_db_memberships_public".app_grants 
  ALTER COLUMN created_at DROP DEFAULT;


