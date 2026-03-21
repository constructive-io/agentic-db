-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/id/alterations/alt0000003212
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/id/column



ALTER TABLE agentic_db_memberships_public.org_members 
    ALTER COLUMN id SET DEFAULT uuidv7();

