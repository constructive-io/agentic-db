-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/indexes/org_profiles_is_default_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_default/column


CREATE INDEX org_profiles_is_default_idx ON agent_db_profiles_public.org_profiles USING BTREE ( is_default );

