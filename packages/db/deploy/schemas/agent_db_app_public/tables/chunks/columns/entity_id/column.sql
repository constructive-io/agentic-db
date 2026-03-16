-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column


ALTER TABLE "agent_db_app_public".chunks 
  ADD COLUMN entity_id uuid;

