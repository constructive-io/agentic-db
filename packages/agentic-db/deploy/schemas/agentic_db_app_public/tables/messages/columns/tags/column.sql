-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/received_at/column


ALTER TABLE "agentic_db_app_public".messages 
  ADD COLUMN tags citext[];

