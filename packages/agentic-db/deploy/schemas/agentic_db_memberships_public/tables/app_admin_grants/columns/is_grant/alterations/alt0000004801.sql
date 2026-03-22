-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/is_grant/alterations/alt0000004801
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/is_grant/column



ALTER TABLE agentic_db_memberships_public.app_admin_grants 
    ALTER COLUMN is_grant SET DEFAULT true;

