-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/id/alterations/alt0000003742
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/id/column



ALTER TABLE "agent_db_status_public".org_levels 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

