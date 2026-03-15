-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/filename/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/url/alterations/alt0000004116


ALTER TABLE "agent_db_app_public".attachments 
  ADD COLUMN filename text;

