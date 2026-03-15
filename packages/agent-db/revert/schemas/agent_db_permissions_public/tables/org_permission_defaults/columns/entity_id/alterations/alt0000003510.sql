-- Revert: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000003510


ALTER TABLE "agent_db_permissions_public".org_permission_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


