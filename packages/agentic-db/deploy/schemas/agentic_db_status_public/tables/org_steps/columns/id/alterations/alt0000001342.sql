-- Deploy: schemas/agentic_db_status_public/tables/org_steps/columns/id/alterations/alt0000001342
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/id/column



ALTER TABLE "agentic_db_status_public".org_steps 
    ALTER COLUMN id SET DEFAULT uuidv7();

