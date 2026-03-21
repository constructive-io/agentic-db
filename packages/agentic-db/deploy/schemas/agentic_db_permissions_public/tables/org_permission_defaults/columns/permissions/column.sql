-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/permissions/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/table


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  ADD COLUMN permissions bit(24);

