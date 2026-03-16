-- Deploy: schemas/agent_db_app_public/tables/templates/columns/id/alterations/alt0000002353
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/id/column
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column



ALTER TABLE "agent_db_app_public".templates 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

