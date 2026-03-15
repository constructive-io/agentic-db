-- Deploy: schemas/agent_db_limits_public/tables/org_limits/columns/id/alterations/alt0000000297
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table
-- requires: schemas/agent_db_limits_public/tables/org_limits/columns/id/column



ALTER TABLE agent_db_limits_public.org_limits 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

