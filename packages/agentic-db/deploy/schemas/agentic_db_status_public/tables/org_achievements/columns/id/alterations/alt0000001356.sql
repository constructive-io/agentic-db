-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/id/alterations/alt0000001356
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/id/column



ALTER TABLE "agentic_db_status_public".org_achievements 
    ALTER COLUMN id SET DEFAULT uuidv7();

