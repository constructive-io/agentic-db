-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitstr/column


ALTER TABLE agent_db_permissions_public.app_permissions 
  DROP COLUMN bitstr RESTRICT;


