-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/columns/created_at/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  DROP COLUMN created_at RESTRICT;


