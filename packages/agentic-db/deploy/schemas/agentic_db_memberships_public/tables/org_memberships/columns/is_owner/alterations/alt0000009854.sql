-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/alterations/alt0000009854
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/column



ALTER TABLE agentic_db_memberships_public.org_memberships 
    ALTER COLUMN is_owner SET DEFAULT false;

