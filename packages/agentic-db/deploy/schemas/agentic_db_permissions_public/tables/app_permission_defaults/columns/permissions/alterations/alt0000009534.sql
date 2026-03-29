-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000009534
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/columns/permissions/column



ALTER TABLE agentic_db_permissions_public.app_permission_defaults 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

