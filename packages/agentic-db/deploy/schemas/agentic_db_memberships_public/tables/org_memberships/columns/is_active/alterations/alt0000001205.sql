-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_active/alterations/alt0000001205
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_active/column



ALTER TABLE "agentic_db_memberships_public".org_memberships 
    ALTER COLUMN is_active SET DEFAULT false;

