-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/updated_at/alterations/alt0000012139
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/updated_at/column


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

