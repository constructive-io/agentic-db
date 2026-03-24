-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/alterations/alt0000001804
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table


COMMENT ON TABLE agentic_db_profiles_public.org_profile_definition_grants IS 'Audit log of permission additions and removals from profile definitions';

