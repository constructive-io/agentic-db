-- Deploy: schemas/agent_db_app_public/tables/skills/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/slug/column


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN description text;

