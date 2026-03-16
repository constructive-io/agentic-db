-- Deploy: schemas/agent_db_app_public/tables/ideas/columns/status/alterations/alt0000002300
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/source/column
-- requires: schemas/agent_db_app_public/tables/ideas/columns/status/column



ALTER TABLE "agent_db_app_public".ideas 
    ALTER COLUMN status SET DEFAULT 'captured';

