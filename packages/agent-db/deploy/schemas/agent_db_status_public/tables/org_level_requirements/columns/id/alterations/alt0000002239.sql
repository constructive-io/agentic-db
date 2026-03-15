-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/id/alterations/alt0000002239
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/id/column



ALTER TABLE "agent_db_status_public".org_level_requirements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

