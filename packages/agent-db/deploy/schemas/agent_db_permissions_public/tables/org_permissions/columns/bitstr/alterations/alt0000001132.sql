-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitstr/alterations/alt0000001132
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitstr/column


ALTER TABLE "agent_db_permissions_public".org_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

