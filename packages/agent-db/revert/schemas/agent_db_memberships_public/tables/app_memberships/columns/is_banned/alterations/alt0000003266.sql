-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000003266


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN is_banned DROP NOT NULL;


