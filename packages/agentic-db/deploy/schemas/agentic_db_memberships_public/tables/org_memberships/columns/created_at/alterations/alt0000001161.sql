-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/created_at/alterations/alt0000001161
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/created_at/column


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  ALTER COLUMN created_at SET DEFAULT now();

