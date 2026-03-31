-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000002411
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/table
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/entity_id/column


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  ALTER COLUMN entity_id SET NOT NULL;

