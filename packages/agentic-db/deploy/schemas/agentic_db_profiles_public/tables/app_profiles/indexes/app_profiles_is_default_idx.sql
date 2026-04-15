-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/indexes/app_profiles_is_default_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_default/column


CREATE INDEX app_profiles_is_default_idx ON agentic_db_profiles_public.app_profiles USING BTREE ( is_default );

