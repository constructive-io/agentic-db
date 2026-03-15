-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


ALTER TABLE agent_db_permissions_public.app_permission_defaults 
  ADD COLUMN id uuid;

