-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000003311


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN is_approved DROP NOT NULL;


