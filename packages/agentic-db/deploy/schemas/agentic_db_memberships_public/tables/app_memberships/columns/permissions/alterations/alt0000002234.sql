-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/permissions/alterations/alt0000002234
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/permissions/column



ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

