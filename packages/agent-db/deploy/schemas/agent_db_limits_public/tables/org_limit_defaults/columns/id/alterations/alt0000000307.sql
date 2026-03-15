-- Deploy: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/id/alterations/alt0000000307
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limit_defaults/table
-- requires: schemas/agent_db_limits_public/tables/org_limit_defaults/columns/id/column



ALTER TABLE agent_db_limits_public.org_limit_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

