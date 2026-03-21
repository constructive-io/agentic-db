-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table


ALTER TABLE agentic_db_permissions_public.app_permission_defaults 
  ENABLE ROW LEVEL SECURITY;

