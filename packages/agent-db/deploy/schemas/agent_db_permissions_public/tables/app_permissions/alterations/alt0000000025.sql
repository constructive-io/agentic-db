-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/alterations/alt0000000025
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


ALTER TABLE agent_db_permissions_public.app_permissions 
  DISABLE ROW LEVEL SECURITY;

