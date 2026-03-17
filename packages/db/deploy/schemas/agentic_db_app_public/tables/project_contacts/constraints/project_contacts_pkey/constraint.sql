-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/constraints/project_contacts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".project_contacts 
  ADD CONSTRAINT project_contacts_pkey PRIMARY KEY (id);

