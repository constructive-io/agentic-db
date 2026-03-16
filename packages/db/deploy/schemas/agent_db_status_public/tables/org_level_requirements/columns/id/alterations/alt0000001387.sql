-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/id/alterations/alt0000001387
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/id/column



ALTER TABLE "agent_db_status_public".org_level_requirements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

