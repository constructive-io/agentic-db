-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/importance/alterations/alt0000001654


ALTER TABLE "agentic_db_app_public".memories 
  ADD COLUMN tags citext[];

