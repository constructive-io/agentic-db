-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/name/alterations/alt0000001066
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/name/column


ALTER TABLE "agentic_db_profiles_public".app_profiles 
  ALTER COLUMN name SET NOT NULL;

