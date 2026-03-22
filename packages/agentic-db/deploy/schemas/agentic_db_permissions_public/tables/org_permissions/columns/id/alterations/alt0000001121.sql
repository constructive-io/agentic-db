-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/columns/id/alterations/alt0000001121
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/columns/id/column


ALTER TABLE "agentic_db_permissions_public".org_permissions 
  ALTER COLUMN id SET NOT NULL;

