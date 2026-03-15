-- Revert: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/id/alterations/alt0000003257


ALTER TABLE "agent_db_permissions_public".app_permission_defaults 
  ALTER COLUMN id DROP NOT NULL;


