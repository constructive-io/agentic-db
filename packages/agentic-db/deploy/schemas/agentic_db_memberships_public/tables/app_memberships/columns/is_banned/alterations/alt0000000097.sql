-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000000097
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_banned/column



ALTER TABLE "agentic_db_memberships_public".app_memberships 
    ALTER COLUMN is_banned SET DEFAULT false;

