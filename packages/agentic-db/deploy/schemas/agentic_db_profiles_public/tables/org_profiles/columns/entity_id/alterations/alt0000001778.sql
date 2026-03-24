-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/entity_id/alterations/alt0000001778
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/entity_id/column


COMMENT ON COLUMN agentic_db_profiles_public.org_profiles.entity_id IS E'Scopes this profile to a specific entity; NULL means it is a global profile';

