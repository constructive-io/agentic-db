-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/project_id/alterations/alt0000001296
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".project_contacts 
  ALTER COLUMN project_id SET NOT NULL;

