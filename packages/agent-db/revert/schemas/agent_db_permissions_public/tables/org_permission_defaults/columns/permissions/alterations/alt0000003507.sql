-- Revert: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/alterations/alt0000003507


ALTER TABLE "agent_db_permissions_public".org_permission_defaults 
  ALTER COLUMN permissions DROP NOT NULL;


