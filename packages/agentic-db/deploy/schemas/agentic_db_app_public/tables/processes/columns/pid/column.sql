-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/pid/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/updated_at/alterations/alt0000002175


ALTER TABLE "agentic_db_app_public".processes 
  ADD COLUMN pid int;

