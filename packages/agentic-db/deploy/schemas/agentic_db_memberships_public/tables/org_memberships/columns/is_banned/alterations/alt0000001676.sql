-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_banned/alterations/alt0000001676
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_banned/column


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN is_banned SET NOT NULL;

