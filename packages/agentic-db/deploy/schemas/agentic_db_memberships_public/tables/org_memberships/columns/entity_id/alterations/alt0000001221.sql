-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/entity_id/alterations/alt0000001221
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/entity_id/column


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  ALTER COLUMN entity_id SET NOT NULL;

