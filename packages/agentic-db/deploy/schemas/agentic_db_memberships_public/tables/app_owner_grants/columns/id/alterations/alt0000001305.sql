-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/id/alterations/alt0000001305
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/id/column


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ALTER COLUMN id SET NOT NULL;

