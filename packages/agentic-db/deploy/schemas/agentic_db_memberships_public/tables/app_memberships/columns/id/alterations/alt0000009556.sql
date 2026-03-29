-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/id/alterations/alt0000009556
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/id/column



ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN id SET DEFAULT uuidv7();

