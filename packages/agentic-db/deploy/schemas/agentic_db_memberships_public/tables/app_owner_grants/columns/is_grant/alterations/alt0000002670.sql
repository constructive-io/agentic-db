-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/is_grant/alterations/alt0000002670
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/is_grant/column


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ALTER COLUMN is_grant SET NOT NULL;

