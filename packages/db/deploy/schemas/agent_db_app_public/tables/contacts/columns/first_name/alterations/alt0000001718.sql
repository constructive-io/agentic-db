-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/first_name/alterations/alt0000001718
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/first_name/column
-- requires: schemas/agent_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000001717


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN first_name SET NOT NULL;

