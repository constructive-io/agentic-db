-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/permissions/alterations/alt0000000368
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/permissions/column



ALTER TABLE "agentic_db_memberships_public".org_memberships 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

