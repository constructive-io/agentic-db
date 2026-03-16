-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table


ALTER TABLE "agentic_db_memberships_public".app_grants 
  ADD COLUMN id uuid;

