-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000001294
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/due_date/column



ALTER TABLE "agentic_db_app_public".milestones 
    ALTER COLUMN status SET DEFAULT 'pending';

