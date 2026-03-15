-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000000292
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/entity_id/column


ALTER TABLE agent_db_permissions_public.org_permission_defaults 
  ALTER COLUMN entity_id SET NOT NULL;

