-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/alterations/alt0000000037
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


ALTER TABLE agent_db_permissions_public.app_permission_defaults 
  DISABLE ROW LEVEL SECURITY;

