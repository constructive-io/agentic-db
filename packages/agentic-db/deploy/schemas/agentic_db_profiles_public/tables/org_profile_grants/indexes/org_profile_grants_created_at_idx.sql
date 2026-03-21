-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_grants/indexes/org_profile_grants_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/created_at/column


CREATE INDEX org_profile_grants_created_at_idx ON agentic_db_profiles_public.org_profile_grants ( created_at );

