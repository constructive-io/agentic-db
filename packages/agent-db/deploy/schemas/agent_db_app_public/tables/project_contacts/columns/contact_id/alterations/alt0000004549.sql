-- Deploy: schemas/agent_db_app_public/tables/project_contacts/columns/contact_id/alterations/alt0000004549
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/project_contacts/table
-- requires: schemas/agent_db_app_public/tables/project_contacts/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent_db_app_public".project_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

