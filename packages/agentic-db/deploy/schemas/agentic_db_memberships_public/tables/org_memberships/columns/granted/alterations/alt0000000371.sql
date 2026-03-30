-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/granted/alterations/alt0000000371
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/granted/column



ALTER TABLE "agentic_db_memberships_public".org_memberships 
    ALTER COLUMN granted SET DEFAULT lpad('', 24, '0')::bit(24);

