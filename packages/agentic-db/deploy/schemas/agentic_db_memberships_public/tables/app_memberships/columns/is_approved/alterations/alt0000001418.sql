-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000001418
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_approved/column



ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN is_approved SET DEFAULT false;

