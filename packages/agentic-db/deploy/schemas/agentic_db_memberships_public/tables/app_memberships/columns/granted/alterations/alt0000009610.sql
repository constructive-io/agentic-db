-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000009610
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/granted/column



ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN granted SET DEFAULT lpad('', 24, '0')::bit(24);

