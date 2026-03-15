-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/triggers/_00000_org_memberships_default_profile_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_private/schema
-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_profiles_private/trigger_fns/org_memberships_default_profile_tg


CREATE TRIGGER _00000_org_memberships_default_profile_trg
BEFORE INSERT ON agent_db_memberships_public.org_memberships
FOR EACH ROW
EXECUTE PROCEDURE agent_db_profiles_private.org_memberships_default_profile_tg ( );

