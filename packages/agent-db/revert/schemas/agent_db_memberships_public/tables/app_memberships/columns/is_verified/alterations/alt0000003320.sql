-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000003320


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN is_verified DROP NOT NULL;


