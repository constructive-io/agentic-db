-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/image/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table


ALTER TABLE "agent_db_status_public".app_levels 
  ADD COLUMN image image;

