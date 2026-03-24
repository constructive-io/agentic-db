-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table


ALTER TABLE "agentic_db_permissions_public".org_permissions 
  ADD COLUMN id uuid;

