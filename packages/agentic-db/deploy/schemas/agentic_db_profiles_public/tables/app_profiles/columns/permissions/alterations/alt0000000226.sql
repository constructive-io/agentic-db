-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/permissions/alterations/alt0000000226
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/permissions/column



ALTER TABLE "agentic_db_profiles_public".app_profiles 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

