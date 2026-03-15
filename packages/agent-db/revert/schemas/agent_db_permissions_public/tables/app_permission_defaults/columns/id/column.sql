-- Revert: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/id/column


ALTER TABLE agent_db_permissions_public.app_permission_defaults 
  DROP COLUMN id RESTRICT;


