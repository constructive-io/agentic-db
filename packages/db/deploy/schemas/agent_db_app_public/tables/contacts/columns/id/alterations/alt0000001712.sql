-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/id/alterations/alt0000001712
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/id/column
-- requires: schemas/agent_db_app_public/tables/images/columns/embedding/column



ALTER TABLE "agent_db_app_public".contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

