-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/triggers/_00000_app_memberships_default_profile_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_private/trigger_fns/app_memberships_default_profile_tg


CREATE TRIGGER _00000_app_memberships_default_profile_trg
BEFORE INSERT ON agentic_db_memberships_public.app_memberships
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_profiles_private.app_memberships_default_profile_tg ( );

