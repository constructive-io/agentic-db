-- Deploy: schemas/agent_db_app_public/tables/projects/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/name/alterations/alt0000004487


ALTER TABLE "agent_db_app_public".projects 
  ADD COLUMN description text;

