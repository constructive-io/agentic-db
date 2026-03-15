-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/triggers/_00000_org_memberships_default_profile_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-private/trigger_fns/org_memberships_default_profile_tg


CREATE TRIGGER _00000_org_memberships_default_profile_trg
BEFORE INSERT ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-profiles-private".org_memberships_default_profile_tg ( );

