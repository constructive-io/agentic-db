-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/alterations/alt0000001349
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_permissions_public.app_permissions 
  DISABLE ROW LEVEL SECURITY;

