-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/alterations/alt0000002392
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table


ALTER TABLE agentic_db_permissions_public.org_permissions 
  DISABLE ROW LEVEL SECURITY;

