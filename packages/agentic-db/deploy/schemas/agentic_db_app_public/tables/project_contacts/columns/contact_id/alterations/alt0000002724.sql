-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/alterations/alt0000002724
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".project_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

