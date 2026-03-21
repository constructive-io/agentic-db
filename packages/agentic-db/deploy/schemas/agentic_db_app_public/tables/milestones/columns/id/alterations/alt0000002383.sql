-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/id/alterations/alt0000002383
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/projects/columns/search_tsv/column



ALTER TABLE "agentic_db_app_public".milestones 
    ALTER COLUMN id SET DEFAULT uuidv7();

