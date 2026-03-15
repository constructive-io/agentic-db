-- Deploy: schemas/agent_db_app_public/tables/skills/columns/always_load/alterations/alt0000004300
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/always_load/column
-- requires: schemas/agent_db_app_public/tables/skills/columns/prerequisites/column



ALTER TABLE "agent_db_app_public".skills 
    ALTER COLUMN always_load SET DEFAULT false;

