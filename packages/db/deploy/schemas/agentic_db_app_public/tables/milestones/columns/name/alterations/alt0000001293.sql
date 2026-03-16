-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/name/alterations/alt0000001293
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/project_id/column


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN name SET NOT NULL;

