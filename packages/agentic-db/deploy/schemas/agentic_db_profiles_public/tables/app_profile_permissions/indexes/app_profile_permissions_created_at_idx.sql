-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/indexes/app_profile_permissions_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/created_at/column


CREATE INDEX app_profile_permissions_created_at_idx ON "agentic_db_profiles_public".app_profile_permissions ( created_at );

