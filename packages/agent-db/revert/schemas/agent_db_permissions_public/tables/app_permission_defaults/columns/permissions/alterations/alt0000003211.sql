-- Revert: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000003211


ALTER TABLE "agent_db_permissions_public".app_permission_defaults 
  ALTER COLUMN permissions DROP NOT NULL;


