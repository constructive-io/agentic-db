-- Deploy: schemas/agent_db_app_public/tables/projects/columns/status/alterations/alt0000002136
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/status/column
-- requires: schemas/agent_db_app_public/tables/projects/columns/description/column



ALTER TABLE "agent_db_app_public".projects 
    ALTER COLUMN status SET DEFAULT 'active';

