-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/is_grant/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/table


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  ADD COLUMN is_grant boolean;

