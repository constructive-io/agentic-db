-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  DROP COLUMN granted RESTRICT;


