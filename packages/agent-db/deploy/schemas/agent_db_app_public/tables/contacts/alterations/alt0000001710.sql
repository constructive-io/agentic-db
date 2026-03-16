-- Deploy: schemas/agent_db_app_public/tables/contacts/alterations/alt0000001710
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/images/columns/embedding/column


ALTER TABLE "agent_db_app_public".contacts 
  DISABLE ROW LEVEL SECURITY;

