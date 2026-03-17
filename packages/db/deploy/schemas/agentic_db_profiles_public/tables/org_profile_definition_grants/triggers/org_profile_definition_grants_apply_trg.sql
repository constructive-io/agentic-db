-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/triggers/org_profile_definition_grants_apply_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table
-- requires: schemas/agentic_db_profiles_private/trigger_fns/org_profile_definition_grants_apply_tg


CREATE TRIGGER org_profile_definition_grants_apply_trg
AFTER INSERT ON "agentic_db_profiles_public".org_profile_definition_grants
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_profiles_private".org_profile_definition_grants_apply_tg ( );

