-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/indexes/app_profiles_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/updated_at/column


CREATE INDEX app_profiles_updated_at_idx ON agent_db_profiles_public.app_profiles ( updated_at );

