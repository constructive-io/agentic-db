-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table


ALTER TABLE "agent_db_status_public".app_steps 
  ADD COLUMN name citext;

