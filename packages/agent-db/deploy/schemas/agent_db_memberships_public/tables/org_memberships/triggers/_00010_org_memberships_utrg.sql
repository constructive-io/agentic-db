-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/triggers/_00010_org_memberships_utrg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_memberships_utg


CREATE TRIGGER _00010_org_memberships_utrg
BEFORE UPDATE ON agent_db_memberships_public.org_memberships
FOR EACH ROW
EXECUTE PROCEDURE agent_db_memberships_private.org_memberships_utg ( );

