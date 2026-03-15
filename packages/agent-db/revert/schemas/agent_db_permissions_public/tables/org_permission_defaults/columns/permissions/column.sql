-- Revert: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/column


ALTER TABLE agent_db_permissions_public.org_permission_defaults 
  DROP COLUMN permissions RESTRICT;


