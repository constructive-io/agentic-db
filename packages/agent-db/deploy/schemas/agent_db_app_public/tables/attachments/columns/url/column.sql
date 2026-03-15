-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/updated_at/alterations/alt0000004115


ALTER TABLE "agent_db_app_public".attachments 
  ADD COLUMN url text;

