-- Deploy: schemas/agentic_db_status_public/tables/org_levels/columns/created_at/alterations/alt0000001376
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table
-- requires: schemas/agentic_db_status_public/tables/org_levels/columns/created_at/column


ALTER TABLE "agentic_db_status_public".org_levels 
  ALTER COLUMN created_at SET DEFAULT now();

