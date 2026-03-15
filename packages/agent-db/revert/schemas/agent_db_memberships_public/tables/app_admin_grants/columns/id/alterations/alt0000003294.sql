-- Revert: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/id/alterations/alt0000003294


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  ALTER COLUMN id DROP NOT NULL;


