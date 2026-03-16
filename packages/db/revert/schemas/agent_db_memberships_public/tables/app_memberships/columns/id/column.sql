-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/id/column


ALTER TABLE "agent_db_memberships_public".app_memberships 
  DROP COLUMN id RESTRICT;


