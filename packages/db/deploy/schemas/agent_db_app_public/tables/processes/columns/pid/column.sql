-- Deploy: schemas/agent_db_app_public/tables/processes/columns/pid/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/updated_at/alterations/alt0000002031


ALTER TABLE "agent_db_app_public".processes 
  ADD COLUMN pid int;

