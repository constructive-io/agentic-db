-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_active/alterations/alt0000003323


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN is_active DROP NOT NULL;


