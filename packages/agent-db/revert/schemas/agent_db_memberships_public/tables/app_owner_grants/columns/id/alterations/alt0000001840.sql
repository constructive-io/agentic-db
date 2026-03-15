-- Revert: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/id/alterations/alt0000001840


ALTER TABLE "agent_db_memberships_public".app_owner_grants 
  ALTER COLUMN id DROP NOT NULL;


