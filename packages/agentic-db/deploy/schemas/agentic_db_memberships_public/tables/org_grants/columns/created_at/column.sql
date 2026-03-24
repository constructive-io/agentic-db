-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table


ALTER TABLE "agentic_db_memberships_public".org_grants 
  ADD COLUMN created_at timestamptz;

