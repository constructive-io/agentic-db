-- Deploy: schemas/agent_db_app_public/tables/skills/columns/slug/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/name/alterations/alt0000001924


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN slug text;

