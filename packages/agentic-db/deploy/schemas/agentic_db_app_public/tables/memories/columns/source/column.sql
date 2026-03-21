-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/source/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/verified/alterations/alt0000001992


ALTER TABLE "agentic_db_app_public".memories 
  ADD COLUMN source text;

