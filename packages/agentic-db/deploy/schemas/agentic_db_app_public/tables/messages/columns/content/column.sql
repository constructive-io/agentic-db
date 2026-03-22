-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/role/alterations/alt0000001454


ALTER TABLE "agentic_db_app_public".messages 
  ADD COLUMN content text;

