-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/verified/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/importance/column


ALTER TABLE "agentic_db_app_public".memories 
  ADD COLUMN verified bool;

