-- Deploy: schemas/agent_db_app_public/tables/project_contacts/columns/project_id/alterations/alt0000004500
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/project_contacts/table
-- requires: schemas/agent_db_app_public/tables/project_contacts/columns/project_id/column
-- requires: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent_db_app_public".project_contacts 
  ALTER COLUMN project_id SET NOT NULL;

