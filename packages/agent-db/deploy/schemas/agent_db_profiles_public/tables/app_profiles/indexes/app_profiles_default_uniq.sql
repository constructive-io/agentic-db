-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/indexes/app_profiles_default_uniq
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_default/column


CREATE UNIQUE INDEX app_profiles_default_uniq ON agent_db_profiles_public.app_profiles ( (true::boolean) ) WHERE is_default = true;

