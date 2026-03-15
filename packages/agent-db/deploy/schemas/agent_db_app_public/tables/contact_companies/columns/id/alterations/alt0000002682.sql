-- Deploy: schemas/agent_db_app_public/tables/contact_companies/columns/id/alterations/alt0000002682
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_companies/table
-- requires: schemas/agent_db_app_public/tables/contact_companies/columns/id/column
-- requires: schemas/agent_db_app_public/tables/notes/constraints/notes_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_companies 
  ALTER COLUMN id SET NOT NULL;

