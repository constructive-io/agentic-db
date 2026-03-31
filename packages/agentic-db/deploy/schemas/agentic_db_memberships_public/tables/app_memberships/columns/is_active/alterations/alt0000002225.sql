-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_active/alterations/alt0000002225
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_active/column



ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN is_active SET DEFAULT false;

