-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/id/alterations/alt0000003233


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN id DROP NOT NULL;


