-- Deploy: schemas/agentic_db_status_public/tables/org_levels/columns/id/alterations/alt0000001369
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table
-- requires: schemas/agentic_db_status_public/tables/org_levels/columns/id/column


ALTER TABLE "agentic_db_status_public".org_levels 
  ALTER COLUMN id SET NOT NULL;

