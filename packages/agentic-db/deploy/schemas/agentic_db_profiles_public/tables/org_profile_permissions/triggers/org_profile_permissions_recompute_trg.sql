-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/triggers/org_profile_permissions_recompute_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agentic_db_profiles_private/trigger_fns/org_profile_permissions_recompute_tg


CREATE TRIGGER org_profile_permissions_recompute_trg
AFTER INSERT OR DELETE OR UPDATE ON agentic_db_profiles_public.org_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_profiles_private.org_profile_permissions_recompute_tg ( );

