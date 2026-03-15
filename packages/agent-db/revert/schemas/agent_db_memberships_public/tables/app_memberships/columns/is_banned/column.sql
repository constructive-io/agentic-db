-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_banned/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  DROP COLUMN is_banned RESTRICT;


